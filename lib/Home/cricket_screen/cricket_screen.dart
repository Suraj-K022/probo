import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/CustomWidget/news_widget.dart';
import 'package:probo/Home/cricket_screen/MatchDetailScreen/match_detail_screen.dart';
import 'package:probo/utils/images.dart';

import '../../CustomWidget/customtext.dart';

class CricketScreen extends StatelessWidget {
  const CricketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Rubik(text: 'Cricket',color: Colors.black,fontWeight: FontWeight.w400,fontSize: 16,),
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Rubik(text: 'Live Matches',fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black,),
                SizedBox(height: 16,),



                InkWell(onTap: (){
                  Get.to(MatchDetailScreen(match: 'IND v/s BAN'));
                },
                  child: Card(shadowColor: Colors.grey,surfaceTintColor: Get.theme.scaffoldBackgroundColor,
                    child: Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10,),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(Images.indflag,height: 24,width: 24,),
                              Poppins(text: 'IND v/s BAN',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                              Image.asset(Images.bangflag,height: 24,width: 24,),
                            ],),
                        ),
                        SizedBox(height: 20,),
                  
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(children: [
                              Poppins(text: '152/09',fontSize: 10,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                              Poppins(text: '140.0 Ovr',fontSize: 12,fontWeight: FontWeight.w500,color:Colors.grey,),
                  
                            ],),
                            Container(color: Colors.red,padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),child: Poppins(text: 'Live',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.scaffoldBackgroundColor,),),
                            Column(children: [
                              Poppins(text: '250/04*',fontSize: 10,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                              Poppins(text: '90.0 Ovr',fontSize: 12,fontWeight: FontWeight.w500,color:Colors.grey,),
                  
                            ],),
                  
                  
                          ],)
                  
                      ],),
                    ),
                  ),
                ),
                SizedBox(height: 16,),



                InkWell(onTap: (){
                  Get.to(MatchDetailScreen(match: 'PAK v/s IND'));
                },
                  child: Card(shadowColor: Colors.grey,surfaceTintColor: Get.theme.scaffoldBackgroundColor,
                    child: Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10,),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(Images.pakflag,height: 24,width: 24,),
                              Poppins(text: 'PAK v/s IND',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                              Image.asset(Images.indflag,height: 24,width: 24,),
                            ],),
                        ),
                        SizedBox(height: 20,),
                  
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(children: [
                              Poppins(text: '152/09',fontSize: 10,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                              Poppins(text: '140.0 Ovr',fontSize: 12,fontWeight: FontWeight.w500,color:Colors.grey,),
                  
                            ],),
                            Container(color: Colors.red,padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),child: Poppins(text: 'Live',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.scaffoldBackgroundColor,),),
                            Column(children: [
                              Poppins(text: '250/04*',fontSize: 10,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                              Poppins(text: '90.0 Ovr',fontSize: 12,fontWeight: FontWeight.w500,color:Colors.grey,),
                  
                            ],),
                  
                  
                          ],)
                  
                      ],),
                    ),
                  ),
                ),
                SizedBox(height: 16,),



                Rubik(text: 'Live Matches',fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black,),
                SizedBox(height: 16,),
                Row(
                  children: [
                    LiveMatchesWidget(event: 'IND v/s BAN',eventimg: Images.eventimg1,),
                    LiveMatchesWidget(event: 'MUM v/s ROI',eventimg: Images.eventimg2),
                  ],
                ),Row(
                  children: [
                    LiveMatchesWidget(event: 'Champions 2025',eventimg: Images.eventimg3),
                    LiveMatchesWidget(event: 'SA-WvWI-W',eventimg: Images.eventimg4),
                  ],
                ),Row(
                  children: [
                    LiveMatchesWidget(event: 'IREvSA',eventimg: Images.eventimg5),
                    LiveMatchesWidget(event: 'ICvKSO',eventimg: Images.eventimg6),
                  ],
                ),

                SizedBox(height: 16,),



                Rubik(text: 'Coming Soon',fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black,),
                SizedBox(height: 16,),
                Row(
                  children: [
                    LiveMatchesWidget(event: 'IND v/s BAN',eventimg: Images.eventimg1,),
                    LiveMatchesWidget(event: 'MUM v/s ROI',eventimg: Images.eventimg2),
                  ],
                ),Row(
                  children: [
                    LiveMatchesWidget(event: 'Champions 2025',eventimg: Images.eventimg3),
                    LiveMatchesWidget(event: 'SA-WvWI-W',eventimg: Images.eventimg4),
                  ],
                ),Row(
                  children: [
                    LiveMatchesWidget(event: 'IREvSA',eventimg: Images.eventimg5),
                    LiveMatchesWidget(event: 'ICvKSO',eventimg: Images.eventimg6),
                  ],
                ),
                SizedBox(height: 16,),



                Rubik(text: 'Active Events',fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black,),



              ],
            ),
          ),

          NewsWidget(title: 'Australia Women to win the 3rd T20 | vs New Zealand Women?',description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum ...',readMoreLink: 'read more...',imageUrl: Images.tshirtyellow,yesAmount: 9.5,noAmount: 2.5,tradewidget: true,showTradeValue: 521512,),
          NewsWidget(title: 'Australia Women to win the 3rd T20 | vs New Zealand Women?',description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum ...',readMoreLink: 'read more...',imageUrl: Images.premiumleagueimg,yesAmount: 9.5,noAmount: 2.5,tradewidget: true,showTradeValue: 521512,),
          NewsWidget(title: 'Australia Women to win the 3rd T20 | vs New Zealand Women?',description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum ...',readMoreLink: 'read more...',imageUrl: Images.eventimg2,yesAmount: 9.5,noAmount: 2.5,tradewidget: true,showTradeValue: 521512,),
          NewsWidget(title: 'Australia Women to win the 3rd T20 | vs New Zealand Women?',description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum ...',readMoreLink: 'read more...',imageUrl: Images.tshirtblue,yesAmount: 9.5,noAmount: 2.5,tradewidget: true,showTradeValue: 521512,),
          NewsWidget(title: 'Australia Women to win the 3rd T20 | vs New Zealand Women?',description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum ...',readMoreLink: 'read more...',imageUrl: Images.tshirtyellow,yesAmount: 9.5,noAmount: 2.5,tradewidget: true,showTradeValue: 521512,),











        ],
      ),
    );
  }
}


class LiveMatchesWidget extends StatelessWidget {
  final String event;
  final String eventimg;
  const LiveMatchesWidget({super.key, required this.event, required this.eventimg});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 7),
          child: Row(spacing: 10,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children: [
            Image.asset(eventimg,height: 24,width: 24,),
            Poppins(text: event,fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,)
          ],),
      
      
        ),
      ),
    );
  }
}

