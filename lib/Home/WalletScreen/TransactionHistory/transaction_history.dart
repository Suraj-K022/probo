import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/CustomWidget/recharge_widget.dart';

import '../../../CustomWidget/account_widget.dart';
import '../../../CustomWidget/customtext.dart';
import '../../../utils/images.dart';

class TransactionHistoryScreen extends StatefulWidget {
  const TransactionHistoryScreen({super.key});

  @override
  State<TransactionHistoryScreen> createState() => _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  int select=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Rubik(
              text: 'Transaction History',
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
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: [
          Row(
            children: [
              Expanded(flex: 1,child: InkWell(onTap: (){setState(() {select=0;});},child: Column(spacing: 10,children: [Rubik(text: 'Account',fontWeight: FontWeight.w400,fontSize: 16,color: select==0?Get.theme.primaryColor:Colors.black,),select==0?Container(height: 3,color: Get.theme.primaryColor,):SizedBox()],))),
              Expanded(flex: 1,child: InkWell(onTap: (){setState(() {select=1;});},child: Column(spacing: 10,children: [Rubik(text: 'Recharge',fontWeight: FontWeight.w400,fontSize: 16,color:select==1?Get.theme.primaryColor:Colors.black,),select==1?Container(height: 3,color: Get.theme.primaryColor,):SizedBox()],))),
              Expanded(flex: 1,child: InkWell(onTap: (){setState(() {select=2;});},child: Column(spacing: 10,children: [Rubik(text: 'Withdraw',fontWeight: FontWeight.w400,fontSize: 16,color: select==2?Get.theme.primaryColor:Colors.black,),select==2?Container(height: 3,color: Get.theme.primaryColor,):SizedBox()],))),


          ],),


          select==0?AccountSection():select==1?RechargeSection():select==2?WithdrawScreen():SizedBox()

        ],


      ),
    );
  }
}




class AccountSection extends StatefulWidget {
  const AccountSection({super.key});

  @override
  State<AccountSection> createState() => _AccountSectionState();
}

class _AccountSectionState extends State<AccountSection> {
  int select=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(onTap: (){setState(() {select=0;});},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: select==0?Get.theme.primaryColor:Get.theme.hintColor.withOpacity(0.3)),padding: EdgeInsets.symmetric(horizontal: 26,vertical: 6),child: Poppins(text: 'All',fontSize: 16,fontWeight: FontWeight.w500,color: select==0?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,))),
              InkWell(onTap: (){setState(() {select=1;});},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: select==1?Get.theme.primaryColor:Get.theme.hintColor.withOpacity(0.3)),padding: EdgeInsets.symmetric(horizontal: 26,vertical: 6),child: Poppins(text: 'Credit',fontSize: 16,fontWeight: FontWeight.w500,color: select==1?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,))),
              InkWell(onTap: (){setState(() {select=2;});},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: select==2?Get.theme.primaryColor:Get.theme.hintColor.withOpacity(0.3)),padding: EdgeInsets.symmetric(horizontal: 26,vertical: 6),child: Poppins(text: 'Debit',fontSize: 16,fontWeight: FontWeight.w500,color: select==2?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,))),
            ],
          ),
        ),

//all tab//
        select==0?Column(
          children: [
            AccountWidget(amount:  100,),
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  100,),
            AccountWidget(amount:  100,),
            AccountWidget(amount:  100,),
            AccountWidget(amount:  100,),
            AccountWidget(amount:  100,),
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  -100,),
          ],
        ):
        //Credit Tab//
        select==1?Column(
          children: [
            AccountWidget(amount:  100,),
            AccountWidget(amount:  100,),
            AccountWidget(amount:  100,),
            AccountWidget(amount:  100,),
            AccountWidget(amount:  100,),
            AccountWidget(amount:  100,),


          ],
        ):select==2?Column(


          children: [
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  -100,),
            AccountWidget(amount:  -100,),

          ],

        ):SizedBox()

      ],









    );
  }
}


class RechargeSection extends StatefulWidget {
  const RechargeSection({super.key});

  @override
  State<RechargeSection> createState() => _RechargeSectionState();
}

class _RechargeSectionState extends State<RechargeSection> {
  int select=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(onTap: (){setState(() {select=0;});},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: select==0?Get.theme.primaryColor:Get.theme.hintColor.withOpacity(0.3)),padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),child: Poppins(text: 'All',fontSize: 16,fontWeight: FontWeight.w500,color: select==0?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,))),
              InkWell(onTap: (){setState(() {select=1;});},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: select==1?Get.theme.primaryColor:Get.theme.hintColor.withOpacity(0.3)),padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),child: Poppins(text: 'Success',fontSize: 16,fontWeight: FontWeight.w500,color: select==1?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,))),
              InkWell(onTap: (){setState(() {select=2;});},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: select==2?Get.theme.primaryColor:Get.theme.hintColor.withOpacity(0.3)),padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),child: Poppins(text: 'Pending',fontSize: 16,fontWeight: FontWeight.w500,color: select==2?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,))),
              InkWell(onTap: (){setState(() {select=3;});},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: select==3?Get.theme.primaryColor:Get.theme.hintColor.withOpacity(0.3)),padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),child: Poppins(text: 'Failed',fontSize: 16,fontWeight: FontWeight.w500,color: select==3?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,))),
            ],
          ),
        ),

        select==0?

            //All//
        Column(
          children: [
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'PENDING',),

          ],
        ):
        select==1?
            //Success//
        Column(
          children: [
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),
            RechargeWidget(amount: 100,progress: 'SUCCESS',),

          ],

        ):
        select==2?
            //Pending//
        Column(
          children: [
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'PENDING',),
            RechargeWidget(amount: 100,progress: 'PENDING',),

          ],
        ):
        select==3?
            //Failed//
        Column(
          children: [
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'FAILED',),
            RechargeWidget(amount: 100,progress: 'FAILED',),

          ],
        ):
        SizedBox()






      ],
    );
  }
}
class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({super.key});

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  int select=0;

  @override
  Widget build(BuildContext context) {
    return Column(



      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(onTap: (){setState(() {select=0;});},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: select==0?Get.theme.primaryColor:Get.theme.hintColor.withOpacity(0.3)),padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),child: Poppins(text: 'All',fontSize: 16,fontWeight: FontWeight.w500,color: select==0?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,))),
              InkWell(onTap: (){setState(() {select=1;});},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: select==1?Get.theme.primaryColor:Get.theme.hintColor.withOpacity(0.3)),padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),child: Poppins(text: 'Success',fontSize: 16,fontWeight: FontWeight.w500,color: select==1?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,))),
              InkWell(onTap: (){setState(() {select=2;});},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: select==2?Get.theme.primaryColor:Get.theme.hintColor.withOpacity(0.3)),padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),child: Poppins(text: 'Pending',fontSize: 16,fontWeight: FontWeight.w500,color: select==2?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,))),
              InkWell(onTap: (){setState(() {select=3;});},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: select==3?Get.theme.primaryColor:Get.theme.hintColor.withOpacity(0.3)),padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),child: Poppins(text: 'Failed',fontSize: 16,fontWeight: FontWeight.w500,color: select==3?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,))),
            ],
          ),

        ),


        Column(spacing: 20,mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100,),


            Image.asset(Images.withdrawillustration,height: 215,),
            Poppins(text: 'No transaction yet',fontWeight: FontWeight.w500,fontSize: 20,color: Get.theme.hintColor,),


          ],
        )
      ],
    );
  }
}









