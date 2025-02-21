import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/CustomWidget/Custom_input_text_field.dart';
import 'package:probo/utils/images.dart';
import '../../../CustomWidget/custom_buttons.dart';
import '../../../CustomWidget/customtext.dart';
import '../../../CustomWidget/news_widget.dart';

class RechargeScreen extends StatefulWidget {
  @override
  State<RechargeScreen> createState() => _RechargeScreenState();
}

class _RechargeScreenState extends State<RechargeScreen> {
  int? amount;
  int showwidget = 0;
  final TextEditingController amountController = TextEditingController();

  final List<int> rechargeAmounts = [250, 500, 1000, 2000];

  @override
  void initState() {
    super.initState();
    amountController.addListener(_onAmountChanged);
  }

  @override
  void dispose() {
    amountController.removeListener(_onAmountChanged);
    amountController.dispose();
    super.dispose();
  }

  void _onAmountChanged() {
    setState(() {
      amount = int.tryParse(amountController.text);
      showwidget = (amount != null && amount! > 0) ? 1 : 0;
    });
  }

  void updateAmount(int selectedAmount) {
    setState(() {
      amount = selectedAmount;
      amountController.text = selectedAmount.toString();
      showwidget = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomButton(
          child: Rubik(
            text: 'Recharge',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Get.theme.scaffoldBackgroundColor,
          ),
          onPressed: () {

            showDialog(
              context: context,
              builder: (context) {
                return

                  StatefulBuilder(
                    builder: (context, setDialogState) => AlertDialog(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      backgroundColor: Get.theme.scaffoldBackgroundColor,
                      contentPadding: const EdgeInsets.all(16),
                      content: Column(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(spacing: 10,
                            children: [
                              Container(height: 40,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Get.theme.primaryColor),child: Center(child: Image.asset(Images.P,width: 14,height: 20,fit: BoxFit.cover,),),),
                              Poppins(text: 'Probo Payment Methods',fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black,),
                            ],
                          ),
                          InkWell(onTap: (){Get.back();},child: Icon(Icons.cancel_outlined,size: 24,color: Get.theme.secondaryHeaderColor,))
                        ],),
                        SizedBox(height: 10,),
                        Poppins(text: 'Payment Option',fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black,),
                        SizedBox(height: 10,),

                        Container(decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey.shade300,)),child: ExpansionTile(tilePadding: EdgeInsets.symmetric(horizontal: 5,),minTileHeight: 20,title: Row(spacing: 10,children: [Image.asset(Images.wallet,height: 24,width: 24,color: Get.theme.primaryColor,),Poppins(text: 'Wallet',fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black,)],),children: [
                          ListTile(minTileHeight: 15,title: Row(spacing: 10,children: [Image.asset(Images.pay1,height: 24,width: 24,),Poppins(text: 'FreeCharge',fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black,)],)),
                          SizedBox(height: 5,),
                          ListTile(minTileHeight: 15,title: Row(spacing: 10,children: [Image.asset(Images.pay2,height: 24,width: 24,),Poppins(text: 'Mobikwik',fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black,)],)),
                          SizedBox(height: 5,),
                          ListTile(minTileHeight: 15,title: Row(spacing: 10,children: [Image.asset(Images.pay3,height: 24,width: 24,),Poppins(text: 'OLA Money',fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black,)],)),
                          SizedBox(height: 5,),
                          ListTile(minTileHeight: 15,title: Row(spacing: 10,children: [Image.asset(Images.pay4,height: 24,width: 24,),Poppins(text: 'Phonepe',fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black,)],)),
                          SizedBox(height: 5,),
                        ],)),
                        SizedBox(height: 15,),
                        Container(decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey.shade300,)),child: ExpansionTile(tilePadding: EdgeInsets.symmetric(horizontal: 5,),minTileHeight: 20,title:
                        Row(spacing: 10,children: [Image.asset(Images.discount,height: 24,width: 24,color: Get.theme.primaryColor,),Poppins(text: 'Offers',fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black,)],)
                          )),
                        
                        SizedBox(height: 20,),
                        Row(spacing: 10,children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Poppins(text: 'Amount Pay',fontWeight: FontWeight.w600,fontSize: 12,color: Get.theme.hintColor,),
                            Poppins(text: '₹ 500',fontWeight: FontWeight.w600,fontSize: 12,color: Get.theme.secondaryHeaderColor,),
                          ],),
                          Expanded(child: CustomButton(child: Poppins(text: 'Pay Now',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.scaffoldBackgroundColor,), onPressed: (){}))
                        ],)
                      ],)
                    ),
                  );
              },
            );

          },
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Rubik(
              text: 'Recharge',
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  size: 24, color: Get.theme.secondaryHeaderColor),
              onPressed: () => Get.back(),
            ),
            backgroundColor: Get.theme.scaffoldBackgroundColor,
            elevation: 0,
            automaticallyImplyLeading: false,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Poppins(
              text: 'Deposit Amount',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Get.theme.secondaryHeaderColor,
            ),
            const SizedBox(height: 8),
            CustomTextField(
              hintText: 'Enter Amount',
              controller: amountController,
              // keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 12),

            /// **Recharge Options**
            Row(
              children: rechargeAmounts.map((amt) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () => updateAmount(amt),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.grey.shade300,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Center(
                        child: Poppins(
                          text: '+$amt',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Get.theme.secondaryHeaderColor,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 16),

            /// **Recharge Summary**
            if (showwidget == 1)
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _summaryRow('Recharge amount', '₹ ${amount ?? 0}'),
                    _summaryRowWithIcon('GST applicable', '-₹ 52.00'),
                    const Divider(height: 20),
                    _summaryRow('Deposit bal. Credit', '₹ 150.00'),
                    _summaryRow('Promotional bal. Credit', '+₹ 57.00', Colors.green),
                    Poppins(
                      text: 'Recharge Cashback',
                      fontSize: 12,
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.left,
                    ),
                    const Divider(height: 20),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Poppins(
                            text: '₹ ${amount ?? 0}',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Get.theme.secondaryHeaderColor,
                          ),
                          Poppins(
                            text: 'Net Balance',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Get.theme.hintColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  /// **Helper Widget: Summary Row**
  Widget _summaryRow(String title, String value, [Color? valueColor]) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Poppins(
          text: title,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Get.theme.secondaryHeaderColor,
        ),
        Poppins(
          text: value,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: valueColor ?? Get.theme.secondaryHeaderColor,
        ),
      ],
    );
  }

  /// **Helper Widget: Summary Row with Icon**
  Widget _summaryRowWithIcon(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Poppins(
              text: title,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Get.theme.secondaryHeaderColor,
            ),
            const SizedBox(width: 4),
            Icon(Icons.info_outline, size: 18, color: Get.theme.primaryColor),
          ],
        ),
        Poppins(
          text: value,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Get.theme.secondaryHeaderColor,
        ),
      ],
    );
  }
}
