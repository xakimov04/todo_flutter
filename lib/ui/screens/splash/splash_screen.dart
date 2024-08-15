import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/utils/device_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lottie/splash.json',
              height: DeviceScreen.w(context) / 3,
              width: DeviceScreen.w(context) / 3,
              fit: BoxFit.cover,
            ),
            const Text(
              'ToDo',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            )
          ],
        ),
      ),
    );
  }
}
