import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/utils/images.dart';
import 'onboardScreen/onboard_screen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigate to OnboardScreen after 2 seconds
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        Get.offAll(() => OnboardScreen());
      });
    });

    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 95,
          width: 216,
          child: Image.asset(Images.logo),
        ),
      ),
    );
  }
}
