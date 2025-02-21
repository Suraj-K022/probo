import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/CustomWidget/customtext.dart';


class TrendingWidget extends StatelessWidget {
  final String imageurl;
  final String text;
  final String? livestatus;
  const TrendingWidget({super.key, required this.imageurl, required this.text,this.livestatus});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 60,
          child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(height: 45,
                decoration: BoxDecoration(color: Get.theme.scaffoldBackgroundColor,border: Border.all(width: 1,color: Colors.grey.shade300),borderRadius: BorderRadius.circular(8)),padding: EdgeInsets.symmetric(horizontal: 14,vertical: 8),
                child: Center(
                  child: Row(spacing: 10,mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(imageurl,height: 24,width: 24,),
                      Poppins(text: text,fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black,)
                    ],

                  ),
                ),),


            ],
          ),
        ),
        livestatus=='live'?Positioned(top: 00,left: 50,child: Container(padding: EdgeInsets.symmetric(horizontal: 8),decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(70)),child: Center(child: Poppins(text: 'Live',fontSize: 10,fontWeight: FontWeight.w500,color: Get.theme.scaffoldBackgroundColor,)),)):SizedBox(),

      ],

    );
  }
}
