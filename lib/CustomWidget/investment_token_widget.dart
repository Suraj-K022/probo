import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/CustomWidget/custom_buttons.dart';
import 'package:probo/CustomWidget/customtext.dart';
import 'package:probo/Portfolio/ViewTradeDetails/view_trade_details.dart';
import 'package:probo/utils/images.dart';

class InvestmentTokenWidget extends StatefulWidget {
  final String investment;
  final String returns;
  final String exitorviewText;

  const InvestmentTokenWidget({
    super.key,
    required this.investment,
    required this.returns,
    required this.exitorviewText,
  });

  @override
  State<InvestmentTokenWidget> createState() => _InvestmentTokenWidgetState();
}

class _InvestmentTokenWidgetState extends State<InvestmentTokenWidget> {
  double mintradevalue=0.0;
  double value=0.0;
  double maxtradevalue=10;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, top: 0, right: 20, left: 20),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: Get.theme.hintColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(Images.bitcoin),
                ),
              ),
              Expanded(
                flex: 3,
                child: Poppins(
                  text: 'Bitcoin to be priced at 54531.14 USDT or more at 06:10 PM?',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  maxLines: 2,
                  color: Get.theme.secondaryHeaderColor,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: InkWell(
                    onTap: () {
                      if (widget.exitorviewText == 'exit') {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(
                              builder: (context, setDialogState) => AlertDialog(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                backgroundColor: Get.theme.scaffoldBackgroundColor,
                                contentPadding: EdgeInsets.all(16),
                                content: Column(spacing: 20,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Poppins(
                                              text: 'Investment',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                            Poppins(
                                              text: '₹ 100',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Get.theme.secondaryHeaderColor,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Poppins(
                                              text: 'Exit Value',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                            Poppins(
                                              text: '₹ 10.0',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.red,
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          onTap: () => Get.back(),
                                          child: Icon(
                                            Icons.cancel_outlined,
                                            color: Get.theme.secondaryHeaderColor,
                                            size: 24,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Poppins(
                                              text: 'Set Exit Price',
                                              fontSize: 12,
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
                                        Container(decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(4)),
                                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                                          child: Row(spacing: 16,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  setDialogState(() {
                                                    value = (value - 0.5).clamp(mintradevalue, maxtradevalue);
                                                  });
                                                },
                                                child: Image.asset(
                                                  Images.minus,
                                                  height: 24,
                                                  width: 24,
                                                  color: value == mintradevalue ? Get.theme.hintColor : Get.theme.primaryColor,
                                                ),
                                              ),
                                              Poppins(
                                                text: ' $value',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                color: Colors.black,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setDialogState(() {
                                                    value = (value + 0.5).clamp(mintradevalue, maxtradevalue);
                                                  });
                                                },
                                                child: Image.asset(
                                                  Images.plus,
                                                  height: 24,
                                                  width: 24,
                                                  color: value == maxtradevalue ? Get.theme.hintColor : Get.theme.primaryColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(color: Colors.grey.shade300, thickness: 1),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Poppins(
                                          text: 'Set Exit Price',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Get.theme.secondaryHeaderColor,
                                        ),
                                        Poppins(
                                          text: '₹ 10.0',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Get.theme.hintColor,
                                        ),
                                      ],
                                    ),
                                    CustomButton(
                                      child: Poppins(
                                        text: 'Exit Price',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Get.theme.scaffoldBackgroundColor,
                                      ),
                                      onPressed: () {
                                        Get.back();
                                      },
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );

                      } else {
                        Get.to(ViewTradeDetails());
                      }
                    },
                    child: Poppins(
                      text: widget.exitorviewText,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Get.theme.secondaryHeaderColor,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey.shade300,
            thickness: 1,
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Poppins(
                    text: 'Investment : ',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Get.theme.secondaryHeaderColor,
                  ),
                  Poppins(
                    text: '₹ ${widget.investment}',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ],
              ),
              Row(
                children: [
                  Poppins(
                    text: 'Returns : ',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Get.theme.secondaryHeaderColor,
                  ),
                  Poppins(
                    text: widget.returns,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: widget.returns.startsWith('-') ? Colors.red : Colors.green,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
