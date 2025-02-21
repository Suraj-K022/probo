

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'customtext.dart';

class RechargeWidget extends StatelessWidget {

  final int amount;
  final String progress;


  const RechargeWidget({super.key, required this.amount, required this.progress});

  @override
  Widget build(BuildContext context) {
    return

      Container(decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade300,width: 1))),
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Poppins(
                  text: progress,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Colors.black,
                ),
                Poppins(
                  text: 'AMOUNT',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Colors.black,
                ),
              ],
            ),
         // Add spacing for better UI
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Poppins(
                      text: progress=='FAILED'?'Recharge Failed':progress=='SUCCESS'?'Recharge Success':'Recharge Pending',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Get.theme.secondaryHeaderColor,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis, // Prevent overflow issues
                    ),
                  ),
                ),
                const SizedBox(width: 16), // Space between text and column
                Poppins(
                  text: '$amount.00 \₹', // Consider formatting currency
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: progress=='FAILED'?Colors.red:progress=='SUCCESS'?Colors.green:Get.theme.primaryColor, // Color logic
                  maxLines: 1,
                ),
              ],
            ),
            // Add spacing for better UI
            Poppins(
              text: 'September 26, 2024 at 11:38 AM',
              fontSize: 12,
              color: Get.theme.hintColor,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      );
  }
}
