import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/utils/images.dart';

import '../../CustomWidget/customtext.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Rubik(
              text: 'Notification',
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  size: 24, color: Get.theme.secondaryHeaderColor),
              onPressed: () {
                Get.back();
              },
            ),
            backgroundColor: Get.theme.scaffoldBackgroundColor,
            elevation: 0,
            automaticallyImplyLeading: false,
          ),
        ),
      ),
      body: Center(child: Column(spacing: 20,mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Images.notificationillustration,height: 215,),
          Poppins(text: 'No notification found',fontWeight: FontWeight.w500,fontSize: 20,color: Get.theme.hintColor,)
        ],
      )),

    );
  }
}
