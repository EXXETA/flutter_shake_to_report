import 'package:flutter/material.dart';
import 'package:shake_to_report_barrier/features/shake_to_report.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ShakeToReport(child: ShakeToReportHome()),
    );
  }
}

class ShakeToReportHome extends StatelessWidget {
  const ShakeToReportHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView.builder(
          itemBuilder: (_, i) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: _FruitTile(fruit: _Fruit.fruits[i]),
          ),
          itemCount: _Fruit.fruits.length,
        ),
      ),
    );
  }
}

class _FruitTile extends StatelessWidget {
  const _FruitTile({required this.fruit});

  final _Fruit fruit;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: fruit.color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Text(
              fruit.icon,
              style: const TextStyle(
                fontSize: 24,
                shadows: [
                  Shadow(
                    color: Color.fromARGB(60, 0, 0, 0),
                    offset: Offset(0, 4),
                    blurRadius: 16,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                fruit.name,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white.withValues(alpha: 0.9),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Fruit {
  const _Fruit({required this.name, required this.icon, required this.color});

  final String name;
  final String icon;
  final Color color;

  static final List<_Fruit> fruits = [
    _Fruit(name: 'Peach', icon: '🍑', color: Colors.pink.shade300),
    _Fruit(name: 'Cherry', icon: '🍒', color: Colors.red.shade900),
    const _Fruit(name: 'Apple', icon: '🍎', color: Colors.red),
    const _Fruit(name: 'Strawberry', icon: '🍓', color: Colors.redAccent),
    const _Fruit(name: 'Mango', icon: '🥭', color: Colors.deepOrange),
    const _Fruit(name: 'Orange', icon: '🍊', color: Colors.orange),
    const _Fruit(name: 'Pineapple', icon: '🍍', color: Colors.amber),
    _Fruit(name: 'Lemon', icon: '🍋', color: Colors.yellow.shade700),
    const _Fruit(name: 'Banana', icon: '🍌', color: Colors.yellow),
    const _Fruit(name: 'Pear', icon: '🍐', color: Colors.lightGreenAccent),
    const _Fruit(name: 'Kiwi', icon: '🥝', color: Colors.lightGreen),
    const _Fruit(name: 'Watermelon', icon: '🍉', color: Colors.green),
    _Fruit(name: 'Avocado', icon: '🥑', color: Colors.green.shade700),
    _Fruit(name: 'Blueberry', icon: '🫐', color: Colors.blue.shade700),
    const _Fruit(name: 'Grape', icon: '🍇', color: Colors.purple),
    const _Fruit(name: 'Coconut', icon: '🥥', color: Colors.brown),
  ];
}
