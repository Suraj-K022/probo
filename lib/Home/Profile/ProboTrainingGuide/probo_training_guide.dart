import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/utils/images.dart';

import '../../../CustomWidget/customtext.dart';


class ProboTrainingGuide extends StatelessWidget {
  const ProboTrainingGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Rubik(text: 'Probo Trading Guide',color: Colors.black,fontWeight: FontWeight.w400,fontSize: 16,),
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
          Container(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: Colors.grey.shade300)),child: Rubik(text: 'Know everything about Probo',color: Get.theme.hintColor,fontSize: 14,fontWeight: FontWeight.w400,)),
          SizedBox(height: 10,),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.shade300,width: 1)),margin: EdgeInsets.symmetric(vertical: 10),child: Row(children: [Expanded(flex: 1,child: Container(child: Image.asset(Images.ptg1),),), SizedBox(width: 16,), Expanded(flex: 3,child: Column(spacing: 5,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start, children: [Poppins(text: 'What is Option Trading',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,), Poppins(text: 'Module 1 /Chapter 1',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.hintColor,),],)),],),),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.shade300,width: 1)),margin: EdgeInsets.symmetric(vertical: 10),child: Row(children: [Expanded(flex: 1,child: Container(child: Image.asset(Images.ptg2),),), SizedBox(width: 16,), Expanded(flex: 3,child: Column(spacing: 5,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start, children: [Poppins(text: 'What is an Event',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,), Poppins(text: 'Module 1 /Chapter 2',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.hintColor,),],)),],),),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.shade300,width: 1)),margin: EdgeInsets.symmetric(vertical: 10),child: Row(children: [Expanded(flex: 1,child: Container(child: Image.asset(Images.ptg3),),), SizedBox(width: 16,), Expanded(flex: 3,child: Column(spacing: 5,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start, children: [Poppins(text: 'Bid, Match & Liqidity',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,), Poppins(text: 'Module 1 /Chapter 3',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.hintColor,),],)),],),),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.shade300,width: 1)),margin: EdgeInsets.symmetric(vertical: 10),child: Row(children: [Expanded(flex: 1,child: Container(child: Image.asset(Images.ptg4),),), SizedBox(width: 16,), Expanded(flex: 3,child: Column(spacing: 5,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start, children: [Poppins(text: 'Pricing, BPA, LTP',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,), Poppins(text: 'Module 1 /Chapter 4',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.hintColor,),],)),],),),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.shade300,width: 1)),margin: EdgeInsets.symmetric(vertical: 10),child: Row(children: [Expanded(flex: 1,child: Container(child: Image.asset(Images.ptg5),),), SizedBox(width: 16,), Expanded(flex: 3,child: Column(spacing: 5,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start, children: [Poppins(text: 'Exit & Cancel',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,), Poppins(text: 'Module 1 /Chapter 5',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.hintColor,),],)),],),),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.shade300,width: 1)),margin: EdgeInsets.symmetric(vertical: 10),child: Row(children: [Expanded(flex: 1,child: Container(child: Image.asset(Images.ptg6),),), SizedBox(width: 16,), Expanded(flex: 3,child: Column(spacing: 5,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start, children: [Poppins(text: 'Categories, Topics & Portfolio',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,), Poppins(text: 'Module 1 /Chapter 6',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.hintColor,),],)),],),),



        ],),

    );
  }
}
