import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:probo/CustomWidget/customtext.dart';
import 'package:probo/Portfolio/portfolio_screen.dart';
import 'package:probo/ReferAndEarn/refer_and_earn_screen.dart';
import 'package:probo/Search/search_screen.dart';

import '../Home/home_screen.dart';
import '../utils/images.dart';


class BottomNavBar extends StatefulWidget {
  final int index;

  const BottomNavBar({super.key, required this.index});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int index;

  final List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    PortfolioScreen(),
    ReferAndEarnScreen(showbackIcon: false,)
  ];

  @override
  void initState() {
    super.initState();
    index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: screens,
      ),
      bottomNavigationBar: Card(elevation: 10,shadowColor: Colors.grey,
        child: Container(
          decoration: BoxDecoration(border: Border.all(width: 1,color: Get.theme.hintColor),borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),),color: Colors.grey.shade200),

          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 90,
          child: Row(
            children: [
              _buildNavItem(0,Images.homedark, Images.homelight,  'Home'),
              _buildNavItem(1, Images.searchdark, Images.searchlight, 'Search'),
              _buildNavItem(2,  Images.casedark,Images.caselight, 'Portfolio'),
              _buildNavItem(3,  Images.bagdark,Images.baglight, 'Refer & Earn'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int itemIndex, String lightIcon, String darkIcon, String label) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            index = itemIndex;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,spacing: 11,
          children: [
            index == itemIndex
                ? Container(width: 63, height: 5, decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.circular(2.5)),)
                : const SizedBox(),
            Image.asset(
              index == itemIndex ? lightIcon : darkIcon,
              height: 24,
              width: 24,
              fit: BoxFit.cover,
            ),
            Poppins(
              text: label,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Get.theme.secondaryHeaderColor,
            ),

          ],
        ),
      ),
    );
  }
}

