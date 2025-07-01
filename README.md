# Shake to Report Barrier - Flutter
In this repository you will find a small Flutter implementation that demonstrates how to trigger a modal for reporting a barrier or problem by simply shaking the device. This feature is inspired by apps like Instagram and can be especially helpful in improving accessibility and gathering user feedback in context.

## Features
- **Shake to Report**: Trigger a bottom sheet modal when shaking the device.
- **Platform Support**: Works on both Android and iOS devices.
- **Customizable Modal**: Easily adapt the modal UI to your app's style and feedback process.

## Prerequisites
To run or build this app you need a working Flutter installation. You can follow the instructions under [docs.flutter.dev](https://docs.flutter.dev/get-started/install) to install Flutter on your machine. We recommend to use the latest stable version of Flutter.
This app was tested using Flutter 3.32.1.

## Installation
Once Flutter is installed, setting up this project is easy:
1. Clone the repository
2. Open it in Android Studio or your preferred IDE
3. Run `flutter pub get` to install dependencies
4. Run the app on a simulator or real device

## Platform Configuration
### Android
To modify the shake gesture on Android, you can update your AndroidManifest.xml:

```xml
<application …>
  <meta-data
    android:name="dev.fluttercommunity.shake_gesture_android.SHAKE_FORCE"
    android:value="5" />
  <meta-data
    android:name="dev.fluttercommunity.shake_gesture_android.MIN_NUM_SHAKES"
    android:value="6" />
</application>
```

### iOS
In Xcode, navigate to `Runner > General > Supported Destinations` and ensure only iPhone and iPad are selected. The shake gesture will not work with macOS or visionOS.

## Example
After launching the app, shake your device and you should see a modal like this:

![shake](https://github.com/user-attachments/assets/bf0a128f-d15d-4851-9d36-4fc85b93e12a)

## Acknowledgements
This project is explained in detail in the article:
👉 [Medium: Shake off your App’s problems - Let’s implement “Shake to report” in Flutter](https://medium.com/@mobileatexxeta/shake-off-your-apps-problems-5c81a6c6d9aa)

## License
This project is licensed under the MIT License - read the [LICENSE](LICENSE) file for more details.
