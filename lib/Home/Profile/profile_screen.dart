import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/Home/Profile/ChangeLanguageScreen/change_language_screen.dart';
import 'package:probo/Home/Profile/EditProfileScreen/edit_profile_screen.dart';
import 'package:probo/Home/Profile/HelpandSupportScreen/help_and_support_screen.dart';
import 'package:probo/Home/Profile/ProboTrainingGuide/probo_training_guide.dart';
import 'package:probo/Home/Profile/TermConditionScreen/term_and_condition_screen.dart';
import 'package:probo/LoginSignupScreen/login_signup_screen.dart';
import 'package:probo/ReferAndEarn/refer_and_earn_screen.dart';
import 'package:probo/utils/images.dart';

import '../../CustomWidget/customtext.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Rubik(text: 'Profile',color: Colors.black,fontWeight: FontWeight.w400,fontSize: 16,),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  size: 24, color: Get.theme.secondaryHeaderColor),
              onPressed: (){Get.back();},
            ),
            backgroundColor: Get.theme.scaffoldBackgroundColor,
            elevation: 0,
            automaticallyImplyLeading: false,
            actions: [
              Image.asset(Images.share,width: 24,height: 24,color: Get.theme.primaryColor,),
              SizedBox(width: 16,),
              InkWell(onTap: (){Get.to(EditProfileScreen());},child: Image.asset(Images.write,width: 24,height: 24,color: Get.theme.primaryColor,)),

            ],

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
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Row(spacing: 5,
              children: [
              Rubik(text: ' 12',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.hintColor,),
              Rubik(text: ' Following',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
            ],),
            Row(spacing: 5,children: [
              Rubik(text: ' 40',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.hintColor,),
              Rubik(text: ' Following',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
            ],),
            Row(spacing: 5,children: [
              Rubik(text: ' 20',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.hintColor,),
              Rubik(text: ' Following',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
            ],),
          ],),
          SizedBox(height: 20,),



          ListTile(onTap: (){Get.to(ReferAndEarnScreen(showbackIcon: true,));},leading: Image.asset(Images.lead1,height: 24,width: 24,), title:Poppins(text: 'Invite and Earn',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black,),trailing: Icon(Icons.arrow_forward_ios_rounded,size: 24,color: Get.theme.secondaryHeaderColor,),),
          ListTile(onTap: (){Get.to(ProboTrainingGuide());},leading: Image.asset(Images.lead2,height: 24,width: 24,), title:Poppins(text: 'Probo Trading Guide',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black,),trailing: Icon(Icons.arrow_forward_ios_rounded,size: 24,color: Get.theme.secondaryHeaderColor,),),
          ListTile(onTap: (){Get.to(TermAndConditionScreen());},leading: Image.asset(Images.lead3,height: 24,width: 24,), title:Poppins(text: 'Terms & Condition',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black,),trailing: Icon(Icons.arrow_forward_ios_rounded,size: 24,color: Get.theme.secondaryHeaderColor,),),
          ListTile(onTap: (){Get.to(HelpAndSupportScreen());},leading: Image.asset(Images.lead4,height: 24,width: 24,), title:Poppins(text: 'Help',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black,),trailing: Icon(Icons.arrow_forward_ios_rounded,size: 24,color: Get.theme.secondaryHeaderColor,),),
          ListTile(onTap: (){Get.to(ChangeLanguageScreen());},leading: Image.asset(Images.lead5,height: 24,width: 24,), title:Poppins(text: 'Language',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black,),trailing: Icon(Icons.arrow_forward_ios_rounded,size: 24,color: Get.theme.secondaryHeaderColor,),),
          InkWell(onTap: (){
            showDialog(
              context: context,
              builder: (context) {
                return StatefulBuilder(
                  builder: (context, setDialogState) => AlertDialog(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    backgroundColor: Get.theme.scaffoldBackgroundColor,
                    contentPadding: const EdgeInsets.all(16),
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Poppins(text: 'Are you sure you want to logout?',fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black,maxLines: 2,textAlign: TextAlign.center,),
                        SizedBox(height: 20,),
                        Row(spacing: 20,
                          children: [
                            Expanded(flex: 1,child: InkWell(onTap: (){Get.offAll(LoginSignupScreen());},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Get.theme.primaryColor),height: 40,child: Center(child: Poppins(text: 'Yes',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.scaffoldBackgroundColor,),)))),
                            Expanded(flex: 1,child: InkWell(onTap: (){Get.back();},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),border: Border.all(color: Get.theme.primaryColor,width: 1)),height: 40,child: Center(child: Poppins(text: 'No',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.primaryColor,),)))),
                          ],
                        )
                      ],
                    )
                  ),
                );
              },
            );
          },child: ListTile(leading: Image.asset(Images.lead6,height: 24,width: 24,), title:Poppins(text: 'Logout',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black,),trailing: Icon(Icons.arrow_forward_ios_rounded,size: 24,color: Get.theme.secondaryHeaderColor,),)),


        ],
      ),

    );
  }
}
