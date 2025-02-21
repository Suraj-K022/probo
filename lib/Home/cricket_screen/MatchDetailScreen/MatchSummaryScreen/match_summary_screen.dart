import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probo/CustomWidget/activity_widget.dart';
import 'package:probo/CustomWidget/news_widget.dart';
import 'package:probo/utils/images.dart';
import '../../../../CustomWidget/customtext.dart';

class MatchSummaryScreen extends StatefulWidget {
  final String match;

  const MatchSummaryScreen({super.key, required this.match});

  @override
  State<MatchSummaryScreen> createState() => _MatchSummaryScreenState();
}

class _MatchSummaryScreenState extends State<MatchSummaryScreen> {
  bool isSelect = true;
  int select=0;


  String? selectedValue = "15 min"; // Default value

  final List<String> options = [
    "15 min",
    "30 min",
    "1 hr",
    "12 hr",
    "24 hr",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 48,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Confirmation'),
                        content: const Text('You selected Yes'),
                        actions: [
                          TextButton(
                            onPressed: () => Get.back(),
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Poppins(
                      text: 'Yes ₹ 9.5',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Confirmation'),
                        content: const Text('You selected No'),
                        actions: [
                          TextButton(
                            onPressed: () => Get.back(),
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Poppins(
                      text: 'No ₹ 2.5',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Poppins(
              text: '${widget.match} Details',
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 24,
                color: Get.theme.secondaryHeaderColor,
              ),
              onPressed: () => Get.back(),
            ),
            backgroundColor: Get.theme.scaffoldBackgroundColor,
            elevation: 0,
            automaticallyImplyLeading: false,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Images.tw1, height: 50, width: 50),
                const SizedBox(width: 10),
                Expanded(
                  child: Poppins(
                    text: 'India v/s Bangladesh T20 World Cup?',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Get.theme.secondaryHeaderColor,
                    maxLines: 2,
                  ),
                ),
                Icon(
                  Icons.favorite,
                  size: 24,
                  color: Get.theme.hintColor,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Poppins(
              text: 'THE MARKET PREDICTIONS',
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Get.theme.hintColor,
              textAlign: TextAlign.center,
            ),
            Poppins(
              text: isSelect==true?'40% probability of Yes':'80% probability of Yes',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: isSelect==true?Colors.green:Colors.red,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            ClipRRect(borderRadius: BorderRadius.all(Radius.circular(30)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(dropdownColor: Get.theme.scaffoldBackgroundColor,icon: SizedBox(),
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  },
                  items: options.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
                const SizedBox(width: 30),
                InkWell(
                  onTap: () {
                    setState(() {
                      isSelect = !isSelect;
                    });
                  },
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 6),
                    decoration: BoxDecoration(
                      color: isSelect==true?Colors.green.shade200:Colors.red.shade200,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Poppins(
                      text: isSelect ? 'Yes' : 'No',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: isSelect==true?Colors.green:Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(Images.candelgraph,height: 334,),

SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Expanded(flex: 1,
                  child: InkWell(onTap: (){setState(() {
                    select=0;

                  });},
                    child: Column(spacing: 10,
                      children: [
                        Poppins(text: 'Activity',fontSize: 14,fontWeight: FontWeight.w500,color: select==0?Get.theme.primaryColor:Get.theme.secondaryHeaderColor,),
                        Container(height: 3,color:  select==0?Get.theme.primaryColor:null,)

                      ],
                    ),
                  ),
                ),
                Expanded(flex: 1,
                  child: InkWell(onTap: (){setState(() {
                    select=1;
                  });},
                    child: Column(spacing: 10,children: [
                      Poppins(text: 'Order Book',fontSize: 14,fontWeight: FontWeight.w500,color: select==1?Get.theme.primaryColor:Get.theme.secondaryHeaderColor,),
                      Container(height: 3,color:  select==1?Get.theme.primaryColor:null,)



                    ],),
                  ),
                )
              ],),
            ),



select==0?ActivityPageView():select==1?OrderBookPageView():SizedBox(),
            SizedBox(height: 20,),

            Poppins(text: 'Activity',fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black,),
            SizedBox(height: 20,),

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(flex: 1,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,spacing: 5,
                    children: [
                      Poppins(text: 'Traders',fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.hintColor,),
                      Poppins(text: '10.4K',fontSize: 14,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),
                    ],),
                ),
                Expanded(flex: 1,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,spacing: 5,
                    children: [
                      Poppins(text: 'Volume',fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.hintColor,),
                      Poppins(text: '₹38.5L',fontSize: 14,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),
                    ],),
                ),
              ],),
            SizedBox(height: 20,),



            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(flex: 1,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,spacing: 5,
                    children: [
                      Poppins(text: 'Started at',fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.hintColor,),
                      Poppins(text: ' Oct 4, 2024 10:00 PM',fontSize: 14,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),
                    ],),
                ),
                Expanded(flex: 1,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,spacing: 5,
                    children: [
                      Poppins(text: 'Ending at',fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.hintColor,),
                      Poppins(text: ' Oct 5, 2024 11:00 PM',fontSize: 14,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),
                    ],),
                ),
              ],),

            SizedBox(height: 20,),
            ListTile(contentPadding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),minTileHeight: 30,
              title: Poppins(text: 'Overview',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
              subtitle: Poppins(text: 'Information about event',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
              trailing: Icon(Icons.arrow_forward_ios,size: 24,color: Get.theme.secondaryHeaderColor,)
              ,),
            ListTile(contentPadding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),minTileHeight: 30,
              title: Poppins(text: 'Source of Truth',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
              subtitle: Poppins(text: 'Information about source of truth',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
              trailing: Icon(Icons.arrow_forward_ios,size: 24,color: Get.theme.secondaryHeaderColor,)
              ,),
            ListTile(contentPadding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),minTileHeight: 30,
              title: Poppins(text: 'Rules',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
              subtitle: Poppins(text: 'Terms and conditions',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
              trailing: Icon(Icons.arrow_forward_ios,size: 24,color: Get.theme.secondaryHeaderColor,)
              ,),










          ],
        ),
      ),
    );
  }
}



class ActivityPageView extends StatelessWidget {
  const ActivityPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        ActivityWidget(),
        SizedBox(height: 20,),
        ActivityWidget(),
        SizedBox(height: 20,),
        ActivityWidget(),
        SizedBox(height: 20,),
        ActivityWidget(),
        SizedBox(height: 20,),
        ActivityWidget(),
        SizedBox(height: 20,),
        ActivityWidget(),
        SizedBox(height: 20,),
        ActivityWidget(),
        SizedBox(height: 20,),
        ActivityWidget(),





      ],
    );
  }
}


class OrderBookPageView extends StatelessWidget {
  const OrderBookPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(spacing: 10,
      children: [
        SizedBox(height: 20,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,spacing: 20,
          children: [
            Expanded(flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: 'Price',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Qty at ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Get.theme.secondaryHeaderColor,
                          ),
                        ),
                        TextSpan(
                          text: 'YES',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.green, // Make "YES" green
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
            Expanded(flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: 'Price',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Qty at ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Get.theme.secondaryHeaderColor,
                          ),
                        ),
                        TextSpan(
                          text: 'No',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.red, // Make "YES" green
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),


          ],
        ),
        SizedBox(height: 5,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,spacing: 20,
          children: [
            Expanded(flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: '8',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  Poppins(text: '40',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                ],
              ),
            ),
            Expanded(flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: '8',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  Poppins(text: '40',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                ],
              ),
            ),


          ],
        ),
        Divider(height: 5,color: Colors.grey.shade300,thickness: 1,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,spacing: 20,
          children: [
            Expanded(flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: '9',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  Poppins(text: '200',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                ],
              ),
            ),
            Expanded(flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: '9',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  Poppins(text: '200',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                ],
              ),
            ),


          ],
        ),
        Divider(height: 5,color: Colors.grey.shade300,thickness: 1,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,spacing: 20,
          children: [
            Expanded(flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: '12',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  Poppins(text: '58',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                ],
              ),
            ),
            Expanded(flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: '12',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  Poppins(text: '58',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                ],
              ),
            ),


          ],
        ),
        Divider(height: 5,color:Colors.grey.shade300,thickness: 1,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,spacing: 20,
          children: [
            Expanded(flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: '12.5',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  Poppins(text: '64',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                ],
              ),
            ),
            Expanded(flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: '12.5',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  Poppins(text: '64',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                ],
              ),
            ),


          ],
        ),
        Divider(height: 5,color:Colors.grey.shade300,thickness: 1,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,spacing: 20,
          children: [
            Expanded(flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: '15',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  Poppins(text: '58',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                ],
              ),
            ),
            Expanded(flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: '15',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  Poppins(text: '58',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                ],
              ),
            ),


          ],
        ),
      ],
    );
  }
}

