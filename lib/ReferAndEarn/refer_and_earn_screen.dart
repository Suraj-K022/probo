import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/CustomWidget/custom_buttons.dart';
import 'package:probo/CustomWidget/customtext.dart';
import 'package:probo/utils/images.dart';

class ReferAndEarnScreen extends StatelessWidget {
  final bool ?showbackIcon;
  const ReferAndEarnScreen({super.key, required this.showbackIcon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
        child: CustomButton(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,spacing: 10,
              children: [
          Image.asset(Images.whatsapp,height: 24,width: 24,),
                Rubik(text: 'Get ₹100 Now',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.scaffoldBackgroundColor,)
        ],), onPressed: (){}),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            centerTitle: true,
            title: Rubik(text: 'Invite and Earn',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black,),
            backgroundColor: Get.theme.scaffoldBackgroundColor,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: showbackIcon==true?IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  size: 24, color: Get.theme.secondaryHeaderColor),
              onPressed: (){Get.back();},
            ):SizedBox(),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 22,),
          Image.asset(Images.illustration,height: 200,),
          SizedBox(height: 40,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            margin: EdgeInsets.symmetric(horizontal: 20),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: Get.theme.hintColor)),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(Images.whatsapp,height: 32,width: 32,),
                      Poppins(text: 'Invite Via\n Whatsapp',fontWeight: FontWeight.w500,fontSize: 12,textAlign: TextAlign.center,)
                    ],

                  ),
                ),
                Container(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(Images.qr,height: 32,width: 32,),
                      Poppins(text: 'Invite Via \n Referral QR',fontWeight: FontWeight.w500,fontSize: 12,textAlign: TextAlign.center,)
                    ],

                  ),
                ),
                Container(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(Images.options,height: 32,width: 32,),
                      Poppins(text: 'More \nOptions',fontWeight: FontWeight.w500,fontSize: 12,textAlign: TextAlign.center,)
                    ],

                  ),
                ),

            ],),)
        ],


        
      ),


    );
  }
}
