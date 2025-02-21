import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../CustomWidget/customtext.dart';
import '../../../utils/images.dart';

class HelpAndSupportScreen extends StatelessWidget {
  const HelpAndSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Rubik(text: 'Help & Support Screen',color: Colors.black,fontWeight: FontWeight.w400,fontSize: 16,),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  size: 24, color: Get.theme.secondaryHeaderColor),
              onPressed: (){Get.back();},
            ),
            backgroundColor: Get.theme.scaffoldBackgroundColor,
            elevation: 0,
            automaticallyImplyLeading: false,


          ),
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: [
          Poppins(text: 'Help and Support',fontWeight: FontWeight.w500,fontSize: 18,color: Get.theme.secondaryHeaderColor,),
          SizedBox(height: 20,),
          Poppins(text: 'Lorem ipsum dolor sit amet consectetur. Sit pulvinar mauris mauris eu nibh semper nisl pretium laoreet. Sed non faucibus ac lectus eu arcu. Nulla sit congue facilisis vestibulum egestas nisl feugiat pharetra. Odio sit tortor morbi at orci ipsum dapibus interdum. Lorem felis est aliquet arcu nullam pellentesque. Et habitasse ac arcu et nunc euismod rhoncus facilisis sollicitudin.',fontWeight: FontWeight.w400,fontSize: 18,color: Get.theme.hintColor,maxLines: 100,),


        ],),

    );
  }
}
