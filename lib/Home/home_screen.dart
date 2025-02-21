import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:probo/CommonScreens/trending_now_screen.dart';
import 'package:probo/CustomWidget/news_widget.dart';
import 'package:probo/CustomWidget/trending_widget.dart';
import 'package:probo/Home/NotificationScreen/notification_screen.dart';
import 'package:probo/Home/Profile/profile_screen.dart';
import 'package:probo/Home/WalletScreen/wallet_screen.dart';
import 'package:probo/Home/bitcoin_screen/bitcoin_screen.dart';
import 'package:probo/Home/cricket_screen/cricket_screen.dart';
import 'package:probo/utils/images.dart';

import '../CustomWidget/customtext.dart';
import '../LoginSignupScreen/login_signup_screen.dart';
import 'cricket_screen/MatchDetailScreen/match_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: ListView(


          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(onTap: (){Get.to(ProfileScreen());},child: CircleAvatar(radius: 20,backgroundImage: AssetImage(Images.profile),)),



                Row(spacing: 16,
                  children: [
                  InkWell(onTap: (){Get.to(WalletScreen());},child: Image.asset(Images.wallet,height: 24,width: 24,)),
                  InkWell(onTap: (){Get.to(NotificationScreen());},child: Image.asset(Images.bell,height: 24,width: 24,)),



                ],)

              ],),
            ),
            Container(margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.shade300,width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,spacing: 20,children: [
                  Image.asset(Images.searchdark,color: Get.theme.hintColor,height: 24,width: 24,),
                Rubik(text: 'Tap to Search',fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.hintColor,)
              ],
              ),





              ),
            SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              child: Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,spacing: 14,
                children: [


                  InkWell(onTap: (){Get.to(CricketScreen());},
                    child: Column(spacing: 8,
                      mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(radius: 24,backgroundColor: Colors.grey.shade200,child: Image.asset(Images.cricket,height: 32,width: 32,fit: BoxFit.cover,),),
                        Rubik(text: 'Cricket',fontSize: 14,color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,)

                    ],),
                  ),


                  InkWell(onTap: (){Get.to(BitcoinScreen());},
                    child: Column(spacing: 8,
                      mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(radius: 24,backgroundColor: Colors.grey.shade200,child: Image.asset(Images.coin,height: 32,width: 32,fit: BoxFit.cover,),),
                        Rubik(text: 'Bitcoin',fontSize: 14,color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,)

                      ],),
                  ),


                  Column(spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 24,backgroundColor: Colors.grey.shade200,child: Image.asset(Images.football,height: 32,width: 32,fit: BoxFit.cover,),),
                      Rubik(text: 'Football',fontSize: 14,color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,)

                    ],),



                  Column(spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 24,backgroundColor: Colors.grey.shade200,child: Image.asset(Images.news,height: 32,width: 32,fit: BoxFit.cover,),),
                      Rubik(text: 'News',fontSize: 14,color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,)

                    ],),



                  Column(spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 24,backgroundColor: Colors.grey.shade200,child: Image.asset(Images.economy,height: 32,width: 32,fit: BoxFit.cover,),),
                      Rubik(text: 'Economy',fontSize: 14,color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,)

                    ],),


                  Column(spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 24,backgroundColor: Colors.grey.shade200,child: Image.asset(Images.election,height: 32,width: 32,fit: BoxFit.cover,),),
                      Rubik(text: 'Elections',fontSize: 14,color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,)

                    ],),


                  Column(spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 24,backgroundColor: Colors.grey.shade200,child: Image.asset(Images.youtube,height: 32,width: 32,fit: BoxFit.cover,),),
                      Rubik(text: 'Youtube',fontSize: 14,color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,)

                    ],),



                  Column(spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 24,backgroundColor: Colors.grey.shade200,child: Image.asset(Images.stocks,height: 32,width: 32,fit: BoxFit.cover,),),
                      Rubik(text: 'Stocks',fontSize: 14,color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,)

                    ],),


                  Column(spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 24,backgroundColor: Colors.grey.shade200,child: Image.asset(Images.carrace,height: 32,width: 32,fit: BoxFit.cover,),),
                      Rubik(text: 'Car race',fontSize: 14,color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,)

                    ],),
                  Column(spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 24,backgroundColor: Colors.grey.shade200,child: Image.asset(Images.tennis,height: 32,width: 32,fit: BoxFit.cover,),),
                      Rubik(text: 'Tennis',fontSize: 14,color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,)

                    ],),
                  Column(spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 24,backgroundColor: Colors.grey.shade200,child: Image.asset(Images.sports,height: 32,width: 32,fit: BoxFit.cover,),),
                      Rubik(text: 'Sports',fontSize: 14,color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,)

                    ],),






              ],),

            ),
            SizedBox(height: 20,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 12),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Rubik(text: 'Trending now',fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black,),
                  InkWell(onTap: (){Get.to(TrendingNowScreen());},child: Rubik(text: 'View all',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.primaryColor,)),

              ],),
            ),


            SingleChildScrollView(scrollDirection: Axis.horizontal,padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,spacing: 16,
                children: [
                  InkWell(onTap: (){Get.to(MatchDetailScreen(match: 'IND v/s BAN'));},child: TrendingWidget(text: 'IND v/s BAN',imageurl: Images.tw1,livestatus: 'live',)),
                  TrendingWidget(text: 'YouTube',imageurl: Images.tw2,livestatus: 'live',),
                  TrendingWidget(text: 'Ethereum',imageurl: Images.tw3,livestatus: 'live',),
                  TrendingWidget(text: 'Breaking News',imageurl: Images.tw4,),
                  TrendingWidget(text: 'ECL T10',imageurl: Images.tw6,),
                  InkWell(onTap: (){Get.to(BitcoinScreen());},child: TrendingWidget(text: 'Bitcoin ',imageurl: Images.tw7,)),

                ],
              ),
            ),
            Container(height: 110,margin: EdgeInsets.only(top: 20,left: 20,right: 20),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.grey.shade400),child: Center(child: Rubik(text: 'Banner',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),),),




            NewsWidget(imageUrl: Images.new1, title: 'Superstar to win the match vs Gujarat?', description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum...', readMoreLink: 'Read More', yesAmount: 9.5, noAmount: 2.5),
            NewsWidget(imageUrl: Images.new2, title: 'Superstar to win the match vs Gujarat?', description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum...', readMoreLink: 'Read More', yesAmount: 9.5, noAmount: 2.5),
            NewsWidget(imageUrl: Images.new3, title: 'Superstar to win the match vs Gujarat?', description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum...', readMoreLink: 'Read More', yesAmount: 9.5, noAmount: 2.5),
            NewsWidget(imageUrl: Images.new4, title: 'Superstar to win the match vs Gujarat?', description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum...', readMoreLink: 'Read More', yesAmount: 9.5, noAmount: 2.5),
            NewsWidget(imageUrl: Images.new5, title: 'Superstar to win the match vs Gujarat?', description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum...', readMoreLink: 'Read More', yesAmount: 9.5, noAmount: 2.5),
            NewsWidget(imageUrl: Images.new6, title: 'Superstar to win the match vs Gujarat?', description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum...', readMoreLink: 'Read More', yesAmount: 9.5, noAmount: 2.5),
            NewsWidget(imageUrl: Images.new7, title: 'Superstar to win the match vs Gujarat?', description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum...', readMoreLink: 'Read More', yesAmount: 9.5, noAmount: 2.5),













          ],
        ),

      ),
    );
  }
}
