import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/CustomWidget/Custom_input_text_field.dart';
import 'package:probo/Home/Profile/profile_screen.dart';

import '../../../CustomWidget/custom_buttons.dart';
import '../../../CustomWidget/customtext.dart';
import '../../../utils/images.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: CustomButton(child: Rubik(text: 'Profile Update',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.scaffoldBackgroundColor,), onPressed: (){Get.off(ProfileScreen());}),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Rubik(text: 'Edit Profile',color: Colors.black,fontWeight: FontWeight.w400,fontSize: 16,),
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
      body:
      ListView(padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(40),child: Image.asset(Images.profilepic,height: 80,width: 80,)),
          SizedBox(height: 12,),
          Rubik(text: 'Mayur Soni',fontSize: 20,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,textAlign: TextAlign.center,),
          SizedBox(height: 20,),
          Poppins(text: 'Name',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
          SizedBox(height: 8,),
          CustomTextField(hintText: 'Enter Name'),
          SizedBox(height: 20,),

          Poppins(text: 'Username',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
          SizedBox(height: 8,),
          CustomTextField(hintText: 'Enter Username'),
          SizedBox(height: 20,),


          Poppins(text: 'Mobile Number',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
          SizedBox(height: 8,),
          CustomTextField(hintText: 'Enter Mobile Number'),
          SizedBox(height: 20,),

          Poppins(text: 'Email ID',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
          SizedBox(height: 8,),
          CustomTextField(hintText: 'Enter Email Address'),
          SizedBox(height: 20,),

          Poppins(text: 'KYC',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
          SizedBox(height: 8,),
          CustomTextField(hintText: 'Verify your KYC'),
          SizedBox(height: 20,),

          Poppins(text: 'Bio',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
          SizedBox(height: 8,),
          CustomTextField(hintText: 'Bio'),
          SizedBox(height: 20,),






        ],
      ),


    );
  }
}
