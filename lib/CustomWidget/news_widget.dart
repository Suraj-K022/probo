import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probo/CustomWidget/customtext.dart';

import '../utils/images.dart';
import 'custom_buttons.dart';

class NewsWidget extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String description;
  final int? showExpireTimeValue;
  final int? showTradeValue;
  final bool? showExpireTime;
  final bool? tradewidget;
  final String readMoreLink;
  final double yesAmount;
  final double noAmount;

  const NewsWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.readMoreLink,
    required this.yesAmount,
    required this.noAmount,
    this.showExpireTime,
    this.showExpireTimeValue, this.tradewidget, this.showTradeValue,
  }) : super(key: key);

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.only(right: 20, left: 20, top: 20),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Get.theme.scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [



            if (widget.tradewidget == true)
              Padding(
                padding: const EdgeInsets.only(bottom: 13),
                child: Row(
                  spacing: 8,
                  children: [
                    Image.asset(Images.stocks,height: 24,width: 24,),
                    Poppins(
                      text: '${widget.showTradeValue} Trades',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Get.theme.hintColor,
                    ),
                  ],
                ),
              )
            else
              SizedBox(),
            
            
            

            


            if (widget.showExpireTime == true)
              Padding(
                padding: const EdgeInsets.only(bottom: 13),
                child: Row(
                  spacing: 8,
                  children: [
                    Icon(
                      CupertinoIcons.clock,
                      size: 24,
                      color: Get.theme.hintColor,
                    ),
                    Poppins(
                      text: 'Expire in a ${widget.showExpireTimeValue} minutes',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Get.theme.hintColor,
                    ),
                  ],
                ),
              )
            else
              SizedBox(),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    widget.imageUrl,
                    width: 68,
                    height: 68,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Poppins(
                    text: widget.title,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    maxLines: 5,
                  ),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            SizedBox(height: 8),
            RichText(
              text: TextSpan(
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Get.theme.secondaryHeaderColor,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                    text: '                     ${widget.description}',
                  ),
                  TextSpan(
                    text: " read more",
                    style: GoogleFonts.poppins(
                      color: Get.theme.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade100,
                        foregroundColor: Colors.green.shade800,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Popup(
                              text: 'Yes',
                            );
                          },
                        );
                      },
                      child: Text("Yes ₹ ${widget.yesAmount}"),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade100,
                      foregroundColor: Colors.red.shade800,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Popup(
                            text: 'No',
                          );
                        },
                      );
                    },
                    child: Text("No ₹ ${widget.noAmount}"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Popup extends StatefulWidget {
  final String text;
  const Popup({super.key, required this.text});

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  int select = 0; // Persistent state for selection
  double value = 0.0;
  double minTradeValue = 0.0;
  double maxTradeValue = 10.0;
  double qtyValue = 0.0;
  double minQtyValue = 0.0;
  double maxQtyValue = 10.0;

  bool Switch1 = false;
  bool Switch2 = false;
  bool Switch3 = false;

  double money = 0.0;
  double minMoneyValue = 0.0;
  double maxMoneyValue = 16.0;

  double qty = 0.0;
  double minqty = 0.0;
  double maxqty = 4.0;

  double min = 0.0;
  double minmin = 0.0;
  double maxmin = 4.0;

  int screen = 0;

  @override
  void initState() {
    super.initState();
    select = widget.text == 'No' ? 1 : 0;
    // Future.delayed(Duration(seconds: 3), () {
    //   Get.back();
    // });
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setDialogState) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        contentPadding: const EdgeInsets.all(16),
        content: screen == 0
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Selection Row
                  Container(
                    height: 48,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(70)),
                    child: Row(
                      children: [
                        // "Yes" Button
                        Expanded(
                          child: InkWell(
                            onTap: () => setDialogState(() => select = 0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                color: select == 0
                                    ? Colors.green
                                    : Get.theme.scaffoldBackgroundColor,
                              ),
                              child: Center(
                                child: Poppins(
                                  text: 'Yes',
                                  color: select == 0
                                      ? Get.theme.scaffoldBackgroundColor
                                      : Get.theme.secondaryHeaderColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // "No" Button
                        Expanded(
                          child: InkWell(
                            onTap: () => setDialogState(() => select = 1),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                color: select == 1
                                    ? Colors.red
                                    : Get.theme.scaffoldBackgroundColor,
                              ),
                              child: Center(
                                child: Poppins(
                                  text: 'No',
                                  color: select == 1
                                      ? Get.theme.scaffoldBackgroundColor
                                      : Get.theme.secondaryHeaderColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20), // Fix spacing issue

                  // Price Section
                  Poppins(
                    text: 'Set Price',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.black,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Poppins(
                              text: 'Price',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Get.theme.secondaryHeaderColor,
                            ),
                            Poppins(
                              text: '40 qty available',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Get.theme.secondaryHeaderColor,
                            ),
                          ],
                        ),
                        _buildCounter(
                          value: value,
                          minValue: minTradeValue,
                          maxValue: maxTradeValue,
                          onIncrement: () => setDialogState(() => value =
                              (value + 0.5)
                                  .clamp(minTradeValue, maxTradeValue)),
                          onDecrement: () => setDialogState(() => value =
                              (value - 0.5)
                                  .clamp(minTradeValue, maxTradeValue)),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // Quantity Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Poppins(
                          text: 'Quantity',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Get.theme.secondaryHeaderColor,
                        ),
                        _buildCounter(
                          value: qtyValue,
                          minValue: minQtyValue,
                          maxValue: maxQtyValue,
                          onIncrement: () => setDialogState(() => qtyValue =
                              (qtyValue + 1).clamp(minQtyValue, maxQtyValue)),
                          onDecrement: () => setDialogState(() => qtyValue =
                              (qtyValue - 0.5).clamp(minQtyValue, maxQtyValue)),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Poppins(
                              text: '₹ 2.5',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            Poppins(
                              text: 'You Put',
                              color: Get.theme.secondaryHeaderColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Poppins(
                              text: '₹ 9.5',
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            Poppins(
                              text: 'You get',
                              color: Get.theme.secondaryHeaderColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade100, // Same as collapsedBackgroundColor
                      border: Border.all(color: Colors.transparent), // Transparent border
                      borderRadius: BorderRadius.circular(8), // Optional: Add rounded corners
                    ),
                    child: ExpansionTile(
                      childrenPadding: EdgeInsets.symmetric(vertical: 10),

                      backgroundColor: Get.theme.scaffoldBackgroundColor,
                      minTileHeight: 30,
                      collapsedBackgroundColor: Colors.yellow.shade100,
                      title: Poppins(
                        text: 'Advance Option',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Poppins(
                              text: 'Book Profit',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            Transform.scale(
                              scale: 0.8, // Adjust this value to make it smaller
                              child: Switch(
                                inactiveThumbColor: Colors.grey.shade500,
                                inactiveTrackColor: Colors.grey.shade300,
                                trackOutlineColor: WidgetStatePropertyAll(Colors.transparent),
                                value: Switch1,
                                onChanged: (value) {
                                  setState(() {
                                    Switch1 = value;
                                  });
                                },
                                activeColor: Get.theme.primaryColor, // Uses theme's primary color
                              ),
                            ),

                          ],
                        ),
                        Switch1 == true
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Poppins(
                                    text: 'Price',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Get.theme.secondaryHeaderColor,
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              money = (money - 4.0).clamp(
                                                  minMoneyValue, maxMoneyValue);
                                            });
                                          },
                                          child: Image.asset(
                                            Images.minus,
                                            height: 24,
                                            width: 24,
                                            color: money == minMoneyValue
                                                ? Get.theme.hintColor
                                                : Get.theme.primaryColor,
                                          )),
                                      Container(
                                        width: 60,
                                        child: Center(
                                          child: Poppins(
                                            text: ' $money',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Get.theme.secondaryHeaderColor,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              money = (money + 4.0).clamp(
                                                  minMoneyValue, maxMoneyValue);
                                            });
                                          },
                                          child: Image.asset(
                                            Images.plus,
                                            height: 24,
                                            width: 24,
                                            color: money == maxMoneyValue
                                                ? Get.theme.hintColor
                                                : Get.theme.primaryColor,
                                          ))
                                    ],
                                  )
                                ],
                              )
                            : SizedBox(),
                        SizedBox(
                          height: 10,
                        ),
                        Switch1 == true
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Poppins(
                                    text: 'Quantity',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Get.theme.secondaryHeaderColor,
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              qty = (qty - 1.0)
                                                  .clamp(minqty, maxqty);
                                            });
                                          },
                                          child: Image.asset(
                                            Images.minus,
                                            height: 24,
                                            width: 24,
                                            color: qty == minqty
                                                ? Get.theme.hintColor
                                                : Get.theme.primaryColor,
                                          )),
                                      Container(
                                        width: 60,
                                        child: Center(
                                          child: Poppins(
                                            text: ' $qty',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Get.theme.secondaryHeaderColor,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              qty = (qty + 1.0)
                                                  .clamp(minqty, maxqty);
                                            });
                                          },
                                          child: Image.asset(
                                            Images.plus,
                                            height: 24,
                                            width: 24,
                                            color: qty == maxqty
                                                ? Get.theme.hintColor
                                                : Get.theme.primaryColor,
                                          ))
                                    ],
                                  )
                                ],
                              )
                            : SizedBox(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Poppins(
                              text: 'Stop Loss',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            Transform.scale(
                              scale: 0.8, // Adjust this value to make it smaller
                              child: Switch(
                                inactiveThumbColor: Colors.grey.shade500,
                                inactiveTrackColor: Colors.grey.shade300,
                                trackOutlineColor: WidgetStatePropertyAll(Colors.transparent),
                                value: Switch2,
                                onChanged: (value) {
                                  setState(() {
                                    Switch2 = value;
                                  });
                                },
                                activeColor: Get.theme.primaryColor, // Uses theme's primary color
                              ),
                            ),
                          ],
                        ),
                        Switch2 == true
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Poppins(
                                    text: 'Price',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Get.theme.secondaryHeaderColor,
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              money = (money - 4.0).clamp(
                                                  minMoneyValue, maxMoneyValue);
                                            });
                                          },
                                          child: Image.asset(
                                            Images.minus,
                                            height: 24,
                                            width: 24,
                                            color: money == minMoneyValue
                                                ? Get.theme.hintColor
                                                : Get.theme.primaryColor,
                                          )),
                                      Container(
                                        width: 60,
                                        child: Center(
                                          child: Poppins(
                                            text: ' $money',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Get.theme.secondaryHeaderColor,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              money = (money + 4.0).clamp(
                                                  minMoneyValue, maxMoneyValue);
                                            });
                                          },
                                          child: Image.asset(
                                            Images.plus,
                                            height: 24,
                                            width: 24,
                                            color: money == maxMoneyValue
                                                ? Get.theme.hintColor
                                                : Get.theme.primaryColor,
                                          ))
                                    ],
                                  )
                                ],
                              )
                            : SizedBox(),
                        SizedBox(
                          height: 10,
                        ),
                        Switch2 == true
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Poppins(
                                    text: 'Quantity',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Get.theme.secondaryHeaderColor,
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              qty = (qty - 1.0)
                                                  .clamp(minqty, maxqty);
                                            });
                                          },
                                          child: Image.asset(
                                            Images.minus,
                                            height: 24,
                                            width: 24,
                                            color: qty == minqty
                                                ? Get.theme.hintColor
                                                : Get.theme.primaryColor,
                                          )),
                                      Container(
                                        width: 60,
                                        child: Center(
                                          child: Poppins(
                                            text: ' $qty',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Get.theme.secondaryHeaderColor,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              qty = (qty + 1.0)
                                                  .clamp(minqty, maxqty);
                                            });
                                          },
                                          child: Image.asset(
                                            Images.plus,
                                            height: 24,
                                            width: 24,
                                            color: qty == maxqty
                                                ? Get.theme.hintColor
                                                : Get.theme.primaryColor,
                                          ))
                                    ],
                                  )
                                ],
                              )
                            : SizedBox(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Poppins(
                              text: 'Auto Cancel',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            Transform.scale(
                              scale: 0.8, // Adjust this value to make it smaller
                              child: Switch(
                                inactiveThumbColor: Colors.grey.shade500,
                                inactiveTrackColor: Colors.grey.shade300,
                                trackOutlineColor: WidgetStatePropertyAll(Colors.transparent),
                                value: Switch3,
                                onChanged: (value) {
                                  setState(() {
                                    Switch3 = value;
                                  });
                                },
                                activeColor: Get.theme.primaryColor, // Uses theme's primary color
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Switch3 == true
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Poppins(
                                    text: 'Minutes',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Get.theme.secondaryHeaderColor,
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              min = (min - 1.0)
                                                  .clamp(minmin, maxmin);
                                            });
                                          },
                                          child: Image.asset(
                                            Images.minus,
                                            height: 24,
                                            width: 24,
                                            color: min == minmin
                                                ? Get.theme.hintColor
                                                : Get.theme.primaryColor,
                                          )),
                                      Container(
                                        width: 60,
                                        child: Center(
                                          child: Poppins(
                                            text: ' $min',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Get.theme.secondaryHeaderColor,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              min = (min + 1.0)
                                                  .clamp(minmin, maxmin);
                                            });
                                          },
                                          child: Image.asset(
                                            Images.plus,
                                            height: 24,
                                            width: 24,
                                            color: min == maxmin
                                                ? Get.theme.hintColor
                                                : Get.theme.primaryColor,
                                          ))
                                    ],
                                  )
                                ],
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // "Place Order" Button
                  CustomButton(
                    color: select == 0 ? Colors.green : Colors.red,
                    child: Poppins(
                      text: 'Place Order',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Get.theme.scaffoldBackgroundColor,
                    ),
                    onPressed: () {
                      setState(() {
                        screen = 1;
                      });
                    },
                  ),
                ],
              )
            : screen == 1
                ? Column(

                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(

                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(alignment: Alignment.centerRight,child: InkWell(onTap: (){Get.back();},child: Icon(Icons.cancel_outlined,size: 24,color: Get.theme.secondaryHeaderColor,))),

                          Image.asset(Images.done,height: 100,width: 100,),
                          Poppins(textAlign: TextAlign.center,
                            text: 'Bid Submit\n Successfully',
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                          )
                        ],
                      )
                    ],
                  )
                : SizedBox(),
      ),
    );
  }

  Widget _buildCounter({
    required double value,
    required double minValue,
    required double maxValue,
    required VoidCallback onIncrement,
    required VoidCallback onDecrement,
  }) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(4)),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: onDecrement,
            child: Image.asset(
              Images.minus,
              height: 24,
              width: 24,
              color: value == minValue
                  ? Get.theme.hintColor
                  : Get.theme.primaryColor,
            ),
          ),
          const SizedBox(width: 16),
          Poppins(
            text: '$value',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.black,
          ),
          const SizedBox(width: 16),
          InkWell(
            onTap: onIncrement,
            child: Image.asset(
              Images.plus,
              height: 24,
              width: 24,
              color: value == maxValue
                  ? Get.theme.hintColor
                  : Get.theme.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
