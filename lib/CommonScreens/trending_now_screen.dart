import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/Home/cricket_screen/MatchDetailScreen/match_detail_screen.dart';

import '../CustomWidget/customtext.dart';
import '../CustomWidget/trending_widget.dart'; // Ensure you import TrendingWidget
import '../Home/bitcoin_screen/bitcoin_screen.dart';
import '../utils/images.dart'; // Ensure you import the Images class

class TrendingNowScreen extends StatelessWidget {
  const TrendingNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Rubik(
              text: 'Trending Now',
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
          Row(spacing: 20,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: (){Get.to(MatchDetailScreen(match: 'IND v/s BAN'));},child: TrendingWidget(text: 'IND v/s BAN', imageurl: Images.tw1, livestatus: 'live')),
              TrendingWidget(text: 'YouTube', imageurl: Images.tw2, livestatus: 'live'),
            ],
          ),
          Row(spacing: 20,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TrendingWidget(text: 'Ethereum', imageurl: Images.tw3, livestatus: 'live'),
              TrendingWidget(text: 'Breaking News', imageurl: Images.tw4),
            ],
          ),
          Row(spacing: 20,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TrendingWidget(text: 'ECL T10', imageurl: Images.tw6),
              InkWell(onTap: (){Get.to(BitcoinScreen());},child: TrendingWidget(text: 'Bitcoin ',imageurl: Images.tw7,)),
            ],
          ),
          Row(spacing: 20,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TrendingWidget(text: 'Ethereum', imageurl: Images.tw3, livestatus: 'live'),
              TrendingWidget(text: 'Breaking News', imageurl: Images.tw4),
            ],
          ),
          Row(spacing: 20,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TrendingWidget(text: 'IND v/s BAN', imageurl: Images.tw1, livestatus: 'live'),
              TrendingWidget(text: 'YouTube', imageurl: Images.tw2, livestatus: 'live'),
            ],
          ),

        ],
      ),
    );
  }
}
