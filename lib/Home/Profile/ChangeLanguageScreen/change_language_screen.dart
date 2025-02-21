import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/CustomWidget/custom_buttons.dart';
import 'package:probo/utils/images.dart';

import '../../../CustomWidget/customtext.dart';

class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({super.key});

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {
  int select=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: CustomButton(child: Rubik(text: 'Save',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.scaffoldBackgroundColor,), onPressed: (){}),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Rubik(text: 'Change Language',color: Colors.black,fontWeight: FontWeight.w400,fontSize: 16,),
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
      body: ListView(padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),children: [
        InkWell(onTap: (){setState(() {select=0;});},child: Container(margin: EdgeInsets.symmetric(vertical: 10),padding: EdgeInsets.symmetric(horizontal: 12,vertical: 9),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: select==0?Get.theme.primaryColor:Colors.grey)), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Row(spacing: 10,children: [SizedBox(height: 32,width: 46,child: Image.asset(Images.flag1,fit: BoxFit.cover,),), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Poppins(text: 'English',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,), Poppins(text: 'English',color: Get.theme.hintColor,fontWeight: FontWeight.w500,fontSize: 12,),],)],), Icon(Icons.check_circle,color: select==0?Get.theme.primaryColor:Colors.grey,size: 24,)],),)),
        InkWell(onTap: (){setState(() {select=1;});},child: Container(margin: EdgeInsets.symmetric(vertical: 10),padding: EdgeInsets.symmetric(horizontal: 12,vertical: 9),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: select==1?Get.theme.primaryColor:Colors.grey)), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Row(spacing: 10,children: [SizedBox(height: 32,width: 46,child: Image.asset(Images.flag2,fit: BoxFit.cover,),), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Poppins(text: 'Hindi',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,), Poppins(text: 'Hindi',color: Get.theme.hintColor,fontWeight: FontWeight.w500,fontSize: 12,),],)],), Icon(Icons.check_circle,color:select==1?Get.theme.primaryColor:Colors.grey,size: 24,)],),)),
        InkWell(onTap: (){setState(() {select=2;});},child: Container(margin: EdgeInsets.symmetric(vertical: 10),padding: EdgeInsets.symmetric(horizontal: 12,vertical: 9),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: select==2?Get.theme.primaryColor:Colors.grey)), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Row(spacing: 10,children: [SizedBox(height: 32,width: 46,child: Image.asset(Images.flag3,fit: BoxFit.cover,),), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Poppins(text: 'Arabic',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,), Poppins(text: 'Arabic',color: Get.theme.hintColor,fontWeight: FontWeight.w500,fontSize: 12,),],)],), Icon(Icons.check_circle,color: select==2?Get.theme.primaryColor:Colors.grey,size: 24,)],),)),
        InkWell(onTap: (){setState(() {select=3;});},child: Container(margin: EdgeInsets.symmetric(vertical: 10),padding: EdgeInsets.symmetric(horizontal: 12,vertical: 9),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: select==3?Get.theme.primaryColor:Colors.grey)), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Row(spacing: 10,children: [SizedBox(height: 32,width: 46,child: Image.asset(Images.flag4,fit: BoxFit.cover,),), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Poppins(text: 'French',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,), Poppins(text: 'French',color: Get.theme.hintColor,fontWeight: FontWeight.w500,fontSize: 12,),],)],), Icon(Icons.check_circle,color: select==3?Get.theme.primaryColor:Colors.grey,size: 24,)],),)),
        InkWell(onTap: (){setState(() {select=4;});},child: Container(margin: EdgeInsets.symmetric(vertical: 10),padding: EdgeInsets.symmetric(horizontal: 12,vertical: 9),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: select==4?Get.theme.primaryColor:Colors.grey)), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Row(spacing: 10,children: [SizedBox(height: 32,width: 46,child: Image.asset(Images.flag5,fit: BoxFit.cover,),), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Poppins(text: 'German',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,), Poppins(text: 'German',color: Get.theme.hintColor,fontWeight: FontWeight.w500,fontSize: 12,),],)],), Icon(Icons.check_circle,color: select==4?Get.theme.primaryColor:Colors.grey,size: 24,)],),)),
        InkWell(onTap: (){setState(() {select=5;});},child: Container(margin: EdgeInsets.symmetric(vertical: 10),padding: EdgeInsets.symmetric(horizontal: 12,vertical: 9),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: select==5?Get.theme.primaryColor:Colors.grey)), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Row(spacing: 10,children: [SizedBox(height: 32,width: 46,child: Image.asset(Images.flag6,fit: BoxFit.cover,),), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Poppins(text: 'Portuguese',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,), Poppins(text: 'Portuguese',color: Get.theme.hintColor,fontWeight: FontWeight.w500,fontSize: 12,),],)],), Icon(Icons.check_circle,color:select==5?Get.theme.primaryColor:Colors.grey,size: 24,)],),)),
        InkWell(onTap: (){setState(() {select=6;});},child: Container(margin: EdgeInsets.symmetric(vertical: 10),padding: EdgeInsets.symmetric(horizontal: 12,vertical: 9),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: select==6?Get.theme.primaryColor:Colors.grey)), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Row(spacing: 10,children: [SizedBox(height: 32,width: 46,child: Image.asset(Images.flag7,fit: BoxFit.cover,),), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Poppins(text: 'Turkish',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,), Poppins(text: 'Turkish',color: Get.theme.hintColor,fontWeight: FontWeight.w500,fontSize: 12,),],)],), Icon(Icons.check_circle,color: select==6?Get.theme.primaryColor:Colors.grey,size: 24,)],),)),
      ],),
    );
  }
}
