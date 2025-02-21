import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../CustomWidget/customtext.dart';
import '../../../utils/images.dart';

class TermAndConditionScreen extends StatelessWidget {
  const TermAndConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Rubik(text: 'Terms & Condition',color: Colors.black,fontWeight: FontWeight.w400,fontSize: 16,),
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
          Poppins(text: 'Usage of Probo',fontWeight: FontWeight.w400,fontSize: 18,color: Get.theme.secondaryHeaderColor,),
          SizedBox(height: 20,),
          Poppins(text: 'At Rideshare, accessible from rideshare.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by rideshare and how we use it.If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in rideshare. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the Free Privacy Policy Generator.',fontWeight: FontWeight.w500,fontSize: 18,color: Get.theme.hintColor,maxLines: 100,),

          SizedBox(height: 20,),
          Poppins(text: 'Usage of Probo',fontWeight: FontWeight.w400,fontSize: 18,color: Get.theme.secondaryHeaderColor,),
          SizedBox(height: 20,),
          Poppins(text: 'At Rideshare, accessible from rideshare.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by rideshare and how we use it.If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in rideshare. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the Free Privacy Policy Generator.',fontWeight: FontWeight.w500,fontSize: 18,color: Get.theme.hintColor,maxLines: 100,),

        
      ],),

    );
  }
}
