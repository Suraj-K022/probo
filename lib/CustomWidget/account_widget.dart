
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'customtext.dart';

class AccountWidget extends StatelessWidget {
  final int amount;
  // final String type;
  const AccountWidget({super.key, required this.amount,});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade300,width: 1))),
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Poppins(
                text: amount >= 0 ? 'CREDIT' : 'DEBIT',
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
          const SizedBox(height: 8), // Add spacing for better UI
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Poppins(
                    text: 'Narendra Modi to accept Pakistan\'s invitation to SCO Summit 2024? #PFR51515255',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Get.theme.hintColor,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis, // Prevent overflow issues
                  ),
                ),
              ),
              const SizedBox(width: 16), // Space between text and column
              Column(
                crossAxisAlignment: CrossAxisAlignment.end, // Align to the right
                children: [
                  Poppins(
                    text: '$amount.00 \₹', // Consider formatting currency
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: amount >= 0 ? Colors.green : Colors.red, // Color logic
                    maxLines: 1,
                  ),
                  Poppins(
                    text: 'Winning',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Get.theme.hintColor,
                    maxLines: 1,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8), // Add spacing for better UI
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
