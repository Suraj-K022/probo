import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/CustomWidget/news_widget.dart';
import 'package:probo/utils/images.dart';

import '../../CustomWidget/customtext.dart';

class BitcoinScreen extends StatelessWidget {
  const BitcoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Rubik(text: 'Bitcoin',color: Colors.black,fontWeight: FontWeight.w400,fontSize: 16,),
            centerTitle: true,
            leading:
                 IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  size: 24, color: Get.theme.secondaryHeaderColor),
              onPressed: (){Get.back();},
            )
            ,
            backgroundColor: Get.theme.scaffoldBackgroundColor,
            elevation: 0,
            automaticallyImplyLeading: false,

          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Image.asset(Images.graph,fit: BoxFit.cover,),
          ),
          SizedBox(height: 24,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Rubik(text: 'Active Trades',fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black, ),
          ),
          
          NewsWidget(imageUrl: Images.bitcoin, title: 'Bitcoin to be priced at 1215210 USDT or more at 02:00 PM?', description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum read more...', readMoreLink: 'readmore', yesAmount: 9.5, noAmount: 2.5,showExpireTime: true,showExpireTimeValue: 2,),
          NewsWidget(imageUrl: Images.bitcoin, title: 'Bitcoin to be priced at 1215210 USDT or more at 02:00 PM?', description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum read more...', readMoreLink: 'readmore', yesAmount: 9.5, noAmount: 2.5,showExpireTime: true,showExpireTimeValue: 2,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.asset(Images.bitcoinbanner),),
          )
        ],
      ),

    );
  }
}
