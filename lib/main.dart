import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/themedata/theme_data.dart';

import 'SplashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ProboApp',
      home: SplashScreen(),
      theme: themeData,
    );
  }
}

