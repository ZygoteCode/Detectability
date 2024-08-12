import 'package:flutter/material.dart';
import 'package:detectability/constants.dart' as constants;
import 'package:detectability/utilities/detections.dart' as detections;

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(constants.appName),
        leading: Image.asset("images/icon.png"),
        leadingWidth: 40,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(7.5, 15, 0, 0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                    "Security check of your device:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  detections.isReallyRealDevice() ? Icons.check_box_rounded : Icons.close,
                  color: detections.isReallyRealDevice() ? Colors.green : Colors.red,
                ),
                Text(
                    detections.isReallyRealDevice() ? "You are on a real device" : "You are NOT on a real device"
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  detections.isOnExternalStorage() ? Icons.close : Icons.check_box_rounded,
                  color: detections.isOnExternalStorage() ? Colors.red : Colors.green,
                ),
                Text(
                    detections.isOnExternalStorage() ? "You are on external storage" : "You are NOT on external storage"
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  detections.isDevMode() ? Icons.close : Icons.check_box_rounded,
                  color: detections.isDevMode() ? Colors.red : Colors.green,
                ),
                Text(
                    detections.isDevMode() ? "You are on Developer Mode" : "You are NOT on Developer Mode"
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  detections.isJailBroken() ? Icons.close : Icons.check_box_rounded,
                  color: detections.isJailBroken() ? Colors.red : Colors.green,
                ),
                Text(
                    detections.isJailBroken() ? "You are on a jail-broken device" : "You are NOT on a jail-broken device"
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  detections.isReallyDebugged() ? Icons.close : Icons.check_box_rounded,
                  color: detections.isReallyDebugged() ? Colors.red : Colors.green,
                ),
                Text(
                    detections.isReallyDebugged() ? "The application is currently debugged" : "The application is NOT debugged"
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  detections.hasCorrectlyInstalled() ? Icons.check_box_rounded : Icons.close,
                  color: detections.hasCorrectlyInstalled() ? Colors.green : Colors.red,
                ),
                Text(
                    detections.hasCorrectlyInstalled() ? "The application is installed from Google Play Store" : "The application is NOT installed from Google Play Store"
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  detections.isCompromised() ? Icons.close : Icons.check_box_rounded,
                  color: detections.isCompromised() ? Colors.red : Colors.green,
                ),
                Text(
                    detections.isCompromised() ? "You are on a rooted device" : "You are NOT on a rooted device"
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  detections.isNotTrust() ? Icons.close : Icons.check_box_rounded,
                  color: detections.isNotTrust() ? Colors.red : Colors.green,
                ),
                Text(
                    detections.isNotTrust() ? "You are on a non-trusted device" : "You are NOT on a non-trusted device"
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  detections.isEmulator() ? Icons.close : Icons.check_box_rounded,
                  color: detections.isEmulator() ? Colors.red : Colors.green,
                ),
                Text(
                    detections.isEmulator() ? "The current app is emulated" : "The current app is NOT emulated"
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}