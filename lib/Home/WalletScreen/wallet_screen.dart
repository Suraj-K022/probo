import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/Home/WalletScreen/PanVerification/pan_verification_screen.dart';
import 'package:probo/Home/WalletScreen/RechargeScreen/recharge_screen.dart';
import 'package:probo/Home/WalletScreen/TransactionHistory/transaction_history.dart';
import 'package:probo/utils/images.dart';

import '../../CustomWidget/customtext.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Rubik(
              text: 'Wallet',
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  size: 24, color: Get.theme.secondaryHeaderColor),
              onPressed: () {
                Get.back();
              },
            ),
            backgroundColor: Get.theme.scaffoldBackgroundColor,
            elevation: 0,
            automaticallyImplyLeading: false,
          ),
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.circular(8)),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: 'Total Balance',fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white,),
                  Poppins(text: '\$854',fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white,)
                ],
              ),
              Image.asset(Images.wallet,height: 32,width: 32,color:Get.theme.scaffoldBackgroundColor,)
            ],
          ),),
          SizedBox(height: 20,)
,

          Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: Colors.grey.shade300)),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(spacing: 10,
                children: [
                  CircleAvatar(radius: 20,backgroundColor: Get.theme.primaryColor.withOpacity(0.3),child: Image.asset(Images.orange1,height: 24,width: 24,),),
                  Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Poppins(text: 'Deposit Amount',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                      Poppins(text: '₹ 500',fontSize: 16,fontWeight: FontWeight.w400,color: Get.theme.hintColor,)
                    ],
                  ),
                ],
              ),
              InkWell(onTap: (){Get.to(RechargeScreen());},
                child: Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Poppins(text: 'Recharge',fontWeight: FontWeight.w600,fontSize: 12,color: Get.theme.scaffoldBackgroundColor,)),
              )
            ],
          ),),



          SizedBox(height: 20,),


          Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: Colors.grey.shade300)),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(spacing: 10,
                  children: [
                    CircleAvatar(radius: 20,backgroundColor: Get.theme.primaryColor.withOpacity(0.3),child: Image.asset(Images.orange2,height: 24,width: 24,),),
                    Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Poppins(text: 'Winning Amount',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                        Poppins(text: '₹ 500',fontSize: 16,fontWeight: FontWeight.w400,color: Get.theme.hintColor,)
                      ],
                    ),
                  ],
                ),
                InkWell(onTap:(){Get.to(PanVerificationScreen());} ,
                  child: Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(color: Get.theme.hintColor.withOpacity(0.3),borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Poppins(text: 'Withdraw',fontWeight: FontWeight.w600,fontSize: 12,color: Get.theme.secondaryHeaderColor,)),
                )
              ],
            ),),


          SizedBox(height: 20,),

          Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: Colors.grey.shade300)),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(spacing: 10,
                  children: [
                    CircleAvatar(radius: 20,backgroundColor: Get.theme.primaryColor.withOpacity(0.3),child: Image.asset(Images.orange3,height: 24,width: 24,),),
                    Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Poppins(text: 'Promotional',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                        Poppins(text: '₹ 0.00',fontSize: 16,fontWeight: FontWeight.w400,color: Get.theme.hintColor,)
                      ],
                    ),
                  ],
                ),
                Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(color: Get.theme.hintColor.withOpacity(0.3),borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Poppins(text: 'Invite & Earn',fontWeight: FontWeight.w600,fontSize: 12,color: Get.theme.secondaryHeaderColor,))
              ],
            ),),

          SizedBox(height: 20,),


          Poppins(text: 'Quick Action',fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black,),


          SizedBox(height: 20,),

          InkWell(onTap: (){Get.to(TransactionHistoryScreen());},
            child: Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: Colors.grey.shade300)),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(spacing: 10,
                    children: [
                      CircleAvatar(radius: 20,backgroundColor: Get.theme.primaryColor.withOpacity(0.3),child: Image.asset(Images.orange4,height: 24,width: 24,),),
                      Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Poppins(text: 'Transaction History',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                          Poppins(text: 'For al balance debits & Credits',fontSize: 12,fontWeight: FontWeight.w400,color: Get.theme.hintColor,)
                        ],
                      ),
                    ],
                  ),

                  Icon(Icons.arrow_forward_ios_rounded,color: Get.theme.secondaryHeaderColor,size: 24,)

                ],
              ),),
          ),


          SizedBox(height: 20,),

          InkWell(onTap: (){Get.to(PanVerificationScreen());},
            child: Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: Colors.grey.shade300)),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(spacing: 10,
                    children: [
                      CircleAvatar(radius: 20,backgroundColor: Get.theme.primaryColor.withOpacity(0.3),child: Image.asset(Images.orange5,height: 24,width: 24,),),
                      Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Poppins(text: 'KYC Verification',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                          Poppins(text: 'Tap to verify',fontSize: 12,fontWeight: FontWeight.w400,color: Get.theme.hintColor,)
                        ],
                      ),
                    ],
                  ),

                  Icon(Icons.arrow_forward_ios_rounded,color: Get.theme.secondaryHeaderColor,size: 24,)

                ],
              ),),
          ),




          SizedBox(height: 20,),

          Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: Colors.grey.shade300)),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(spacing: 10,
                  children: [
                    CircleAvatar(radius: 20,backgroundColor: Get.theme.primaryColor.withOpacity(0.3),child: Image.asset(Images.orange6,height: 24,width: 24,),),
                    Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Poppins(text: 'Statements & Certificates',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                        Poppins(text: 'For ledger and TDS certificates',fontSize: 12,fontWeight: FontWeight.w400,color: Get.theme.hintColor,)
                      ],
                    ),
                  ],
                ),

                Icon(Icons.arrow_forward_ios_rounded,color: Get.theme.secondaryHeaderColor,size: 24,)

              ],
            ),),






        ],
      ),



    );
  }
}
