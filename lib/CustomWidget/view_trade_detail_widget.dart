import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'customtext.dart';

class ViewTradeDetailWidget extends StatelessWidget {
  final String status;
  final double amount;
  final double changeAmount;

  const ViewTradeDetailWidget({
    super.key,
    required this.amount,
    required this.changeAmount, required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){
      showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setDialogState) => AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              backgroundColor: Get.theme.scaffoldBackgroundColor,
              contentPadding: EdgeInsets.all(16),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(spacing: 20,

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(height: 47,width: 92,decoration: BoxDecoration(color:status=='Yes'? Colors.green.shade200:Colors.red.shade200,borderRadius: BorderRadius.circular(100)),child: Center(child: Poppins(text: status,fontWeight: FontWeight.w500,fontSize: 18,color: status=='Yes'?Colors.green:Colors.red,)),),

                      Expanded(child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Poppins(text: status=='Yes'?'Sattled':'Not Satteled',color: Get.theme.primaryColor,fontSize: 12,fontWeight: FontWeight.w600,),
                          Poppins(text: 'Order ID - 1548552412',color: Get.theme.secondaryHeaderColor,fontSize: 12,fontWeight: FontWeight.w600,),
                          Poppins(text: 'Sep 24, 2024 14:00',color: Get.theme.hintColor,fontSize: 12,fontWeight: FontWeight.w600,),
                        ],)),


                      InkWell(
                        onTap: () => Get.back(),
                        child: Icon(
                          Icons.cancel_outlined,
                          color: Get.theme.secondaryHeaderColor,
                          size: 24,
                        ),
                      )
                    ],
                  ),

                  Divider(color: Colors.grey.shade300, thickness: 1),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Poppins(text: 'Order Type',color: Get.theme.secondaryHeaderColor,fontSize: 14,fontWeight: FontWeight.w500,),
                    Poppins(text: 'Limit',color: Get.theme.secondaryHeaderColor,fontSize: 14,fontWeight: FontWeight.w500,),
                  ],),

                  Divider(color: Colors.grey.shade300, thickness: 1),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Poppins(text: 'Qty',color: Get.theme.secondaryHeaderColor,fontSize: 14,fontWeight: FontWeight.w500,),
                      Poppins(text: '1',color: Get.theme.secondaryHeaderColor,fontSize: 14,fontWeight: FontWeight.w500,),
                    ],),

                  Divider(color:Colors.grey.shade300, thickness: 1),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Poppins(text: 'Exit Qty',color: Get.theme.secondaryHeaderColor,fontSize: 14,fontWeight: FontWeight.w500,),
                      Poppins(text: '1',color: Get.theme.secondaryHeaderColor,fontSize: 14,fontWeight: FontWeight.w500,),
                    ],),


                  Divider(color: Colors.grey.shade300, thickness: 1),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Poppins(text: 'Exit Price',color: Get.theme.secondaryHeaderColor,fontSize: 14,fontWeight: FontWeight.w500,),
                      Poppins(text: '₹ 1',color: Get.theme.secondaryHeaderColor,fontSize: 14,fontWeight: FontWeight.w500,),
                    ],),



                  Divider(color: Colors.grey.shade300, thickness: 1),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Poppins(text: 'Profit',color: Get.theme.secondaryHeaderColor,fontSize: 14,fontWeight: FontWeight.w500,),
                      Poppins(text: '₹ -25.0',color: Get.theme.secondaryHeaderColor,fontSize: 14,fontWeight: FontWeight.w500,),
                    ],),



                  Divider(color: Colors.grey.shade300, thickness: 1),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Poppins(text: 'Platform Fee',color: Get.theme.secondaryHeaderColor,fontSize: 14,fontWeight: FontWeight.w500,),
                      Poppins(text: '₹ 0',color: Get.theme.secondaryHeaderColor,fontSize: 14,fontWeight: FontWeight.w500,),
                    ],),



                  Divider(color:Colors.grey.shade300, thickness: 1),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Poppins(text: 'Order ID',color: Get.theme.secondaryHeaderColor,fontSize: 14,fontWeight: FontWeight.w500,),
                      Poppins(text: 'ERFT41210122124',color: Get.theme.secondaryHeaderColor,fontSize: 14,fontWeight: FontWeight.w500,),
                    ],),






                ],
              ),
            ),
          );
        },
      );

    },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Poppins(
              text: status,
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: status=='Yes'?Colors.green:Colors.red,
            ),
            Divider(thickness: 1, color: Colors.grey.shade300),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Poppins(
                      text: 'Investment',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    Poppins(
                      text: '₹${amount.toStringAsFixed(2)}',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Get.theme.secondaryHeaderColor,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Poppins(
                      text: 'Return',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    Poppins(
                      text: '₹${changeAmount.toStringAsFixed(2)}',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: changeAmount < 0 ? Colors.red : Colors.green,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
