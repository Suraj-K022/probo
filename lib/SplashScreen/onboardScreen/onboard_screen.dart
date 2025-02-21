import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/CustomWidget/custom_buttons.dart';
import 'package:probo/CustomWidget/customtext.dart';
import 'package:probo/LoginSignupScreen/login_signup_screen.dart';
import 'package:probo/utils/images.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int currentIndex = 0;
  final List<Map<String, String>> onboardData = [
    {'title': 'Welcome to Probo', 'subtitle': 'Predict the outcome of real-world events & earn', 'image': Images.onboardimage1},
    {'title': 'Will Mumbai win the league?', 'subtitle': '', 'image': Images.onboardimage2},
    {'title': 'Predict on 200+ topics', 'subtitle': '', 'image': Images.onboardimage3},
    {'title': 'Earn with 4M+ traders', 'subtitle': '', 'image': Images.onboardimage4},
  ];

  void _nextScreen() {
    if (currentIndex < onboardData.length - 1) {
      setState(() => currentIndex++);
    } else {
      Get.off(() => const LoginSignupScreen());
    }
  }

  void _previousScreen() {
    if (currentIndex > 0) {
      setState(() => currentIndex--);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min,spacing: 20,crossAxisAlignment: CrossAxisAlignment.end,
        children: [


          Container(child: Image.asset(onboardData[currentIndex]['image']!, height: currentIndex == 2 ? 370 : 389 & currentIndex==1?430 : 389 &  currentIndex==0?450 : 389,    fit: BoxFit.fitWidth)),
          onboardData==2? SizedBox(height: 50,):SizedBox(height: 20),

onboardData==2?SizedBox(height: 50,):onboardData==1?SizedBox(height: 0,):SizedBox(),
          Align(alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Rubik(
                text: onboardData[currentIndex]['title']!,
                fontWeight: FontWeight.w500,
                fontSize: 32,
                textAlign: TextAlign.center,
                color: Colors.black,
                maxLines: 2,
              ),
            ),
          ),
          if (onboardData[currentIndex]['subtitle']!.isNotEmpty)
            Rubik(
              text: onboardData[currentIndex]['subtitle']!,
              maxLines: 2,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              textAlign: TextAlign.center,
              color: Get.theme.hintColor,
            ),








          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onboardData.length,
                  (index) => Container(
                height: 4,
                width: 20,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: currentIndex == index ? Get.theme.primaryColor : Get.theme.hintColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: CustomButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Rubik(
                    text: currentIndex == onboardData.length - 1 ? 'Get Started' : 'Next',
                    color: Get.theme.scaffoldBackgroundColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  if (currentIndex < onboardData.length - 1) const SizedBox(width: 10),
                  if (currentIndex < onboardData.length - 1)
                    Icon(Icons.arrow_forward, size: 24, color: Get.theme.scaffoldBackgroundColor),
                ],
              ),
              onPressed: _nextScreen,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          // if (onboardData==0) Container(color: Colors.black,height: 100,) else SizedBox(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentIndex > 0)
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new_rounded, size: 24, color: Get.theme.secondaryHeaderColor),
                    onPressed: _previousScreen,
                  ),
                currentIndex==0?SizedBox():InkWell(
                  onTap: () => Get.off(() => const LoginSignupScreen()),
                  child: Rubik(
                    text: 'Skip',
                    color: Get.theme.secondaryHeaderColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Rubik(text: 'LOGO', fontSize: 40, fontWeight: FontWeight.w500, textAlign: TextAlign.center),



          // const SizedBox(height: 50),

        ],
      ),
    );
  }
}