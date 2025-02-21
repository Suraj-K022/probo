import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/CustomWidget/view_trade_detail_widget.dart';
import 'package:probo/utils/images.dart';

import '../../CustomWidget/customtext.dart';

class ViewTradeDetails extends StatefulWidget {
  const ViewTradeDetails({super.key});

  @override
  State<ViewTradeDetails> createState() => _ViewTradeDetailsState();
}

class _ViewTradeDetailsState extends State<ViewTradeDetails> {
  int select=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded,
                size: 24, color: Get.theme.secondaryHeaderColor),
            onPressed:(){Get.back();},
          ),
            centerTitle: true,
            title: Rubik(text: 'View Trade Details',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black,),
            backgroundColor: Get.theme.scaffoldBackgroundColor,
            elevation: 0,
            automaticallyImplyLeading: false,

          ),
        ),
      ),
      body:
      ListView(
        children: [
          Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: Colors.grey.shade200)),margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,spacing: 16,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(radius: 20,backgroundImage: AssetImage(Images.bitcoin),
                ),
                Expanded(child: Poppins(text: 'Bitcoin to be priced at 54531.14 USDT or more at 06:10 PM?',maxLines: 3,fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.secondaryHeaderColor,)),
                Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  Poppins(text: 'Rank',fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black,),
                  Poppins(text: '152154421',fontSize: 12,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),
                ],),

            ],),),

SizedBox(height: 20,),
          Row(
            children: [
              Expanded(child: Column(spacing: 16,
                children: [
                  InkWell(highlightColor: Get.theme.scaffoldBackgroundColor,
                      onTap: (){setState(() {
                    select=0;
                  });},child: Container(width: Get.width,child: Poppins(text: 'All',color: select==0?Get.theme.primaryColor:Colors.black,fontSize: 16,fontWeight: FontWeight.w400,textAlign: TextAlign.center,),)),
                  select==0?Container(margin: EdgeInsets.symmetric(horizontal: 15),height: 3,color: Get.theme.primaryColor,):SizedBox()
                ],
              )),
              Expanded(child: Column(spacing: 16,
                children: [
                  InkWell(highlightColor: Get.theme.scaffoldBackgroundColor,onTap: (){setState(() {
                    select=1;
                  });},child: Container(width: Get.width,child: Poppins(text: 'Settled',color: select==1?Get.theme.primaryColor:Colors.black,fontSize: 16,fontWeight: FontWeight.w400,textAlign: TextAlign.center,),)),
                  select==1?Container(margin: EdgeInsets.symmetric(horizontal: 15),height: 3,color: Get.theme.primaryColor,):SizedBox()

                ],
              )),
              Expanded(child: Column(spacing: 16,
                children: [
                  InkWell(highlightColor: Get.theme.scaffoldBackgroundColor,onTap: (){setState(() {
                    select=2;
                  });},child: Container(width: Get.width,child: Poppins(text: 'Cancelled',color: select==2?Get.theme.primaryColor:Colors.black,fontSize: 16,fontWeight: FontWeight.w400,textAlign: TextAlign.center,),)),
                  select==2?Container(margin: EdgeInsets.symmetric(horizontal: 15),height: 3,color: Get.theme.primaryColor,):SizedBox()

                ],
              )),

            ],
          ),

          select==0?All():select==1?Settled():select==2?Cancelled():SizedBox()
        ],









      ),
    );
  }
}




class All extends StatelessWidget {
  const All({super.key});

  @override
  Widget build(BuildContext context) {
    return
      ListView(shrinkWrap: true,
      children: [
      ViewTradeDetailWidget(amount: 100, changeAmount: - 2.5, status: 'Yes'),
        ViewTradeDetailWidget(amount: 100, changeAmount:  2.5, status: 'No'),

      ViewTradeDetailWidget(amount: 100, changeAmount: - 2.5, status: 'Yes'),
        ViewTradeDetailWidget(amount: 100, changeAmount:  2.5, status: 'No'),
        ViewTradeDetailWidget(amount: 100, changeAmount:  2.5, status: 'No'),
    ],);


  }
}





class Settled extends StatelessWidget {
  const Settled({super.key});

  @override
  Widget build(BuildContext context) {
    return
      ListView(shrinkWrap: true,
        children: [
          ViewTradeDetailWidget(amount: 100, changeAmount:  2.5, status: 'Yes'),
          ViewTradeDetailWidget(amount: 100, changeAmount: - 2.5, status: 'Yes'),
        ],);
  }
}
class Cancelled extends StatelessWidget {
  const Cancelled({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true,
      children: [
        ViewTradeDetailWidget(amount: 100, changeAmount: - 2.5, status: 'No'),
        ViewTradeDetailWidget(amount: 100, changeAmount:  2.5, status: 'No'),
        ViewTradeDetailWidget(amount: 100, changeAmount:  2.5, status: 'No'),
      ],);
  }
}
