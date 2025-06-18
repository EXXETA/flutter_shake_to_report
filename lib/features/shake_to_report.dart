import 'package:flutter/material.dart';
import 'package:shake_gesture/shake_gesture.dart';

class ShakeToReport extends StatefulWidget {
  const ShakeToReport({required this.child, super.key});

  final Widget child;

  @override
  State<ShakeToReport> createState() => _ShakeToReportState();
}

class _ShakeToReportState extends State<ShakeToReport> {
  bool _isModalShown = false;

  void _showModal() {
    if (_isModalShown) {
      return;
    }
    setState(() {
      _isModalShown = true;
    });
    showModalBottomSheet(
      context: context,
      builder: (_) => const ShakeToReportModal(),
    ).then((result) {
      setState(() {
        _isModalShown = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ShakeGesture(onShake: _showModal, child: widget.child);
  }
}

class ShakeToReportModal extends StatelessWidget {
  const ShakeToReportModal({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 96),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Report a barrier',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'Something is not working as expected? '
              'Please give us feedback and help to make '
              'our app better for everyone!',
            ),
          ),
          TextButton(
            onPressed: () {
              // TODO: implement
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateColor.resolveWith(
                (_) => colors.primary,
              ),
              foregroundColor: WidgetStateColor.resolveWith(
                (_) => colors.onPrimary,
              ),
            ),
            child: const Text('Report barrier'),
          ),
        ],
      ),
    );
  }
}
