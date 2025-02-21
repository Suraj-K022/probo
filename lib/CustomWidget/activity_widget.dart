import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/CustomWidget/customtext.dart';
import 'package:probo/utils/images.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,spacing: 10,
      children: [
        Stack(alignment: Alignment.bottomCenter,

          children: [
            Container(
              padding: EdgeInsets.all(2),
              height: 70,
              width: 70,
              decoration: BoxDecoration(border: Border.all(width: 3,color: Colors.red),borderRadius: BorderRadius.circular(50)),
              child: Image.asset(Images.anonymous,fit: BoxFit.cover,)
            ),
            Container(decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(Radius.circular(60))),padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),child: Center(child: Poppins(text: '140 Users',fontWeight: FontWeight.w600,fontSize: 12,color: Get.theme.scaffoldBackgroundColor,),),)
          ],

        ),
        
        Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,spacing: 5,
            children: [
              Container(height: 28,child: Row(children: [
                Expanded(flex: 2,child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomLeft: Radius.circular(40)),color: Colors.red.shade300,),child: Center(child: Poppins(text: 'Yes ₹ 9.5',fontWeight: FontWeight.w500,fontSize: 12,color: Colors.red.shade900,),),)),
                Expanded(flex: 3,child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40)),color: Colors.green.shade300,),child: Center(child: Poppins(text: 'Yes ₹ 9.5',fontWeight: FontWeight.w500,fontSize: 12,color: Colors.green.shade900,),))),
              ],),),
              Poppins(text: 'a few second ago',fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w400,)
          
            ],
          ),
        ),
        
        Stack(alignment: Alignment.bottomCenter,

          children: [
            Container(
              padding: EdgeInsets.all(2),
              height: 70,
              width: 70,
              decoration: BoxDecoration(border: Border.all(width: 3,color: Colors.green),borderRadius: BorderRadius.circular(50)),
              child: Image.asset(Images.anonymous,fit: BoxFit.cover)
            ),
            Container(decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.all(Radius.circular(60))),padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),child: Center(child: Poppins(text: 'Top 10%',fontWeight: FontWeight.w600,fontSize: 12,color: Get.theme.scaffoldBackgroundColor,),),)
          ],

        ),
      ],
    );
  }
}
