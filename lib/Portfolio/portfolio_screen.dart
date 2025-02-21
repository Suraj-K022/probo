import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/CustomWidget/customtext.dart';
import 'package:probo/CustomWidget/investment_token_widget.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 1, color: Get.theme.hintColor))),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          select = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 16,
                        children: [
                          Rubik(
                            text: 'Active Trades',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: select == 0
                                ? Get.theme.primaryColor
                                : Colors.black,
                          ),
                          select == 0
                              ? Container(
                                  width: Get.width,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: Get.theme.primaryColor,
                                      borderRadius: BorderRadius.circular(3)),
                                )
                              : SizedBox()
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          select = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 16,
                        children: [
                          Rubik(
                            text: 'Close Trades',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: select == 1
                                ? Get.theme.primaryColor
                                : Colors.black,
                          ),
                          select == 1
                              ? Container(
                                  width: Get.width,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: Get.theme.primaryColor,
                                      borderRadius: BorderRadius.circular(3)),
                                )
                              : SizedBox()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //activetradecontent//

            if (select == 0)
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Column(
                      spacing: 20,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Poppins(
                              text: 'Current Value',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                            Poppins(
                              text: '-₹ 200',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Get.theme.secondaryHeaderColor,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Poppins(
                                        text: 'Investment',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                      Poppins(
                                        text: '₹ 100',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Get.theme.secondaryHeaderColor,
                                      ),
                                    ])),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Poppins(
                                      text: 'Live Gains',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                    Poppins(
                                      text: '₹ 100',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Get.theme.secondaryHeaderColor,
                                    ),
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  InvestmentTokenWidget(exitorviewText: 'exit',investment: ' 2.5',returns: '-₹ 2.5',),
                  InvestmentTokenWidget(exitorviewText: 'exit',investment: ' 2.5',returns: '-₹ 2.5',),









                ],
                //closetradecontent//
              )
            else
              select == 1
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.all(12),
                          child: Column(
                            spacing: 20,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Poppins(
                                    text: 'Returns',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                  Poppins(
                                    text: '-₹ 200',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Get.theme.secondaryHeaderColor,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Poppins(
                                          text: 'Investment',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                        Poppins(
                                          text: '₹ 100',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Get
                                              .theme.secondaryHeaderColor,
                                        ),
                                      ]),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Poppins(
                                        text: 'Today,s Return',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                      Poppins(
                                        text: '₹ 100',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Get.theme.secondaryHeaderColor,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Poppins(
                                        text: 'Rank',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                      Poppins(
                                        text: '152154421',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Get.theme.secondaryHeaderColor,
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),

                        InvestmentTokenWidget(exitorviewText: 'view',investment: ' 2.5',returns: '₹ 20',),
                        InvestmentTokenWidget(exitorviewText: 'view',investment: ' 2.5',returns: '-₹ 2.5',)
                      ],
                    )
                  : SizedBox(),
          ],
        ),
      ),
    );
  }
}
