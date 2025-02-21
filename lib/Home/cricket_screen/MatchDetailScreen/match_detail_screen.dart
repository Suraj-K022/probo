import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:probo/Home/cricket_screen/MatchDetailScreen/MatchSummaryScreen/match_summary_screen.dart';
import 'package:probo/utils/images.dart';

import '../../../CustomWidget/customtext.dart';
import '../../../CustomWidget/news_widget.dart';

class MatchDetailScreen extends StatefulWidget {
  final String match;

  const MatchDetailScreen({super.key, required this.match});

  @override
  State<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen> {
  int select=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Rubik(text: widget.match,color: Colors.black,fontWeight: FontWeight.w400,fontSize: 16,),
            centerTitle: true,
            leading:
            IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  size: 24, color: Get.theme.secondaryHeaderColor),
              onPressed: (){Get.back();},
            )
            ,
            backgroundColor: Get.theme.scaffoldBackgroundColor,
            elevation: 0,
            automaticallyImplyLeading: false,

          ),
        ),
      ),

      body: ListView(shrinkWrap: true,

        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(12)),child: Image.asset(Images.matchbanner,height: 148,fit: BoxFit.cover,)),
          ),







          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                Expanded(flex: 1,
                  child: InkWell(onTap: () {
                    setState(() {
                      select=0;
                    });
                  },
                    child: Column(spacing: 10,
                    
                      children: [
                        Poppins(text: 'Trade ',fontSize: 16,fontWeight: FontWeight.w600,color: select==0?Get.theme.primaryColor:Get.theme.secondaryHeaderColor,),
                        Container(height: 3,color:  select==0?Get.theme.primaryColor:null,)
                    
                      ],
                    
                    ),
                  ),
                ),
                Expanded(flex: 1,
                  child: InkWell(onTap: () {
                    setState(() {
                      select=1;
                    });


                  },
                    child: Column(spacing: 10,

                      children: [
                        Poppins(text: 'Full Score ',fontSize: 16,fontWeight: FontWeight.w600,color:  select==1?Get.theme.primaryColor:Get.theme.secondaryHeaderColor,),
                        Container(height: 3,color: select==1?Get.theme.primaryColor:null,)


                      ],

                    ),
                  ),
                )
              ],
            ),
          ),

          select==0?TradePageView():select==1?FullScorePageView():SizedBox()


        ],

      ),
    );
  }
}


class TradePageView extends StatefulWidget {
  const TradePageView({super.key});

  @override
  State<TradePageView> createState() => _TradePageViewState();
}

class _TradePageViewState extends State<TradePageView> {
  int option=0;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(height: 20,),
        SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(spacing: 20,

            children: [
              SizedBox(width: 10,),
              InkWell(onTap: (){
                setState(() {
                  option=0;

                });

              },child: Container(decoration: BoxDecoration(color: option==0?Get.theme.primaryColor:null,borderRadius: BorderRadius.all(Radius.circular(78)),border: Border.all(width: 1,color: Colors.grey.shade300)),padding: EdgeInsets.symmetric(horizontal: 16,vertical: 5,), child: Poppins(text: 'All',fontWeight: FontWeight.w500,fontSize: 16,color: option==0?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,),)),
              InkWell(onTap: (){setState(() {
                option=1;


              });},child: Container(decoration: BoxDecoration(color: option==1?Get.theme.primaryColor:null,borderRadius: BorderRadius.all(Radius.circular(78)),border: Border.all(width: 1,color: Colors.grey.shade300)),padding: EdgeInsets.symmetric(horizontal: 16,vertical: 5,), child: Row(spacing: 6, children: [Image.asset(Images.match,height: 24,width: 24,), Poppins(text: 'Match',fontWeight: FontWeight.w500,fontSize: 16,color: option==1?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,),],),)),
              InkWell(onTap: (){
                setState(() {
                  option=2;


                });
              },child: Container(decoration: BoxDecoration(color: option==2?Get.theme.primaryColor:null,borderRadius: BorderRadius.all(Radius.circular(78)),border: Border.all(width: 1,color: Colors.grey.shade300)),padding: EdgeInsets.symmetric(horizontal: 16,vertical: 5,), child: Row(spacing: 6, children: [Image.asset(Images.over,height: 24,width: 24,), Poppins(text: 'Over',fontWeight: FontWeight.w500,fontSize: 16,color: option==2?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,),],),)),
              InkWell(onTap: (){
                setState(() {
                  option=3;


                });
              },child: Container(decoration: BoxDecoration(color: option==3?Get.theme.primaryColor:null,borderRadius: BorderRadius.all(Radius.circular(78)),border: Border.all(width: 1,color: Colors.grey.shade300)),padding: EdgeInsets.symmetric(horizontal: 16,vertical: 5,), child: Row(spacing: 6, children: [Image.asset(Images.player,height: 24,width: 24,), Poppins(text: 'Player',fontWeight: FontWeight.w500,fontSize: 16,color: option==3?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,),],),)),
              InkWell(onTap: (){
                setState(() {
                  option=4;


                });
              },child: Container(decoration: BoxDecoration(color: option==4?Get.theme.primaryColor:null,borderRadius: BorderRadius.all(Radius.circular(78)),border: Border.all(width: 1,color: Colors.grey.shade300)),padding: EdgeInsets.symmetric(horizontal: 16,vertical: 5,), child: Row(spacing: 6, children: [Image.asset(Images.team,height: 24,width: 24,), Poppins(text: 'Team',fontWeight: FontWeight.w500,fontSize: 16,color: option==4?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,),],),)),
              SizedBox(width: 10,),

            ],

          ),
        ),



        InkWell(onTap: (){Get.to(MatchSummaryScreen(match: 'IND v/s BAN',));},child: NewsWidget(title: 'Australia Women to win the 3rd T20 | vs New Zealand Women?',description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum ...',readMoreLink: 'read more...',imageUrl: Images.tshirtyellow,yesAmount: 9.5,noAmount: 2.5,tradewidget: true,showTradeValue: 521512,)),
        InkWell(onTap: (){Get.to(MatchSummaryScreen(match: 'IND v/s BAN',));},child: NewsWidget(title: 'Australia Women to win the 3rd T20 | vs New Zealand Women?',description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum ...',readMoreLink: 'read more...',imageUrl: Images.premiumleagueimg,yesAmount: 9.5,noAmount: 2.5,tradewidget: true,showTradeValue: 521512,)),
        InkWell(onTap: (){Get.to(MatchSummaryScreen(match: 'IND v/s BAN',));},child: NewsWidget(title: 'Australia Women to win the 3rd T20 | vs New Zealand Women?',description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum ...',readMoreLink: 'read more...',imageUrl: Images.eventimg2,yesAmount: 9.5,noAmount: 2.5,tradewidget: true,showTradeValue: 521512,)),
        InkWell(onTap: (){Get.to(MatchSummaryScreen(match: 'IND v/s BAN',));},child: NewsWidget(title: 'Australia Women to win the 3rd T20 | vs New Zealand Women?',description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum ...',readMoreLink: 'read more...',imageUrl: Images.tshirtblue,yesAmount: 9.5,noAmount: 2.5,tradewidget: true,showTradeValue: 521512,)),
        InkWell(onTap: (){Get.to(MatchSummaryScreen(match: 'IND v/s BAN',));},child: NewsWidget(title: 'Australia Women to win the 3rd T20 | vs New Zealand Women?',description: 'The overall number of unicorns also declined to 50 from 80 in the year ago lorem ipsum ...',readMoreLink: 'read more...',imageUrl: Images.tshirtyellow,yesAmount: 9.5,noAmount: 2.5,tradewidget: true,showTradeValue: 521512,)),



      ],
    );
  }
}




class FullScorePageView extends StatefulWidget {
  const FullScorePageView({super.key});

  @override
  State<FullScorePageView> createState() => _FullScorePageViewState();
}

class _FullScorePageViewState extends State<FullScorePageView> {
  int select=0;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),height: 60,color: Colors.grey.shade200,
          child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Expanded(flex: 1,child: InkWell(onTap: (){setState(() {select=0;});},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: select==0?Get.theme.primaryColor:Colors.grey.shade200),padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),child: Center(child: Poppins(text: 'Scorecard',fontWeight: FontWeight.w500,fontSize: 14,color: select==0?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,))))),
            Expanded(flex: 1,child: InkWell(onTap: (){setState(() {select=1;});},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: select==1?Get.theme.primaryColor:Colors.grey.shade200),padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),child: Center(child: Poppins(text: 'Commentary',fontWeight: FontWeight.w500,fontSize: 14,color:select==1?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,))))),
            Expanded(flex: 1,child: InkWell(onTap: (){setState(() {select=2;});},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: select==2?Get.theme.primaryColor:Colors.grey.shade200),padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),child: Center(child: Poppins(text: 'Graph',fontWeight: FontWeight.w500,fontSize: 14,color:select==2?Get.theme.scaffoldBackgroundColor:Get.theme.secondaryHeaderColor,))))),

          ],),
        ),


        select==0?ScoreCardSection():select==1?CommentarySection():select==2?GraphSection():SizedBox(),




      ],
    );
  }
}




class ScoreCardSection extends StatefulWidget {

  const ScoreCardSection({super.key});

  @override
  State<ScoreCardSection> createState() => _ScoreCardSectionState();
}

class _ScoreCardSectionState extends State<ScoreCardSection> {
  int select=0;
  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 48,child: Row(
            children: [
              Expanded(child: InkWell(onTap: (){setState(() {
                select=0;
              });},
                child: Column(mainAxisAlignment: MainAxisAlignment.end,spacing: 10,
                  children: [
                  Rubik(text: 'IND - Innings',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black,),
                  select==0?Container(color: Get.theme.primaryColor,height: 3,):SizedBox()
                ],),
              )),



              Expanded(child: InkWell(onTap: (){setState(() {
                select=1;
              });},
                child: Column(mainAxisAlignment: MainAxisAlignment.end,spacing: 10,
                  children: [
                    Rubik(text: 'BAN - Innings',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black,),
                    select==1?Container(color: Get.theme.primaryColor,height: 3,):SizedBox()
                  ],),
              )),
            ],
          ),),


          Column(
            children: [
              select==0?Container(margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),decoration: BoxDecoration(color: Get.theme.scaffoldBackgroundColor,borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.shade300,width: 1)),padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                child: Row(children: [
                  Expanded(flex: 1,child: Row(spacing: 10,children: [Image.asset(Images.indflag,height: 24,width: 24,),Poppins(text: 'Australia',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,)],)),
                  Expanded(flex: 1,child: Row(spacing: 10,children: [Poppins(text: '42/2 (15.2 Overs )RR 4.20',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,)],))

                ],),):SizedBox(),
              select==0?Container(margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),decoration: BoxDecoration(color:Colors.grey.shade200,borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.shade300,width: 1)),padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                child:
                Column(
                  children: [
                    Row(children: [
                      Expanded(flex: 5,child: Row(spacing: 10,children: [Poppins(text: 'Bating',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,)],)),
                      Expanded(flex: 1,child: Row(spacing: 10,children: [Poppins(text: 'R',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,)],)),
                      Expanded(flex: 1,child: Row(spacing: 10,children: [Poppins(text: 'B',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,)],)),
                      Expanded(flex: 1,child: Row(spacing: 10,children: [Poppins(text: '4s',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,)],)),
                      Expanded(flex: 1,child: Row(spacing: 10,children: [Poppins(text: '6s',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,)],)),
                      Expanded(flex: 1,child: Row(spacing: 10,children: [Poppins(text: 'S/R',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,)],)),

                    ],),
                    SizedBox(height: 10,),

                    PlayersBattingTile(),
                    PlayersBattingTile(),
                    PlayersBattingTile(),
                    PlayersBattingTile(),
                    PlayersBattingTile(),
                    PlayersBattingTile(),
                    PlayersBattingTile(),
                    PlayersBattingTile(),
                    PlayersBattingTile(),
                    PlayersBattingTile(),
                    PlayersBattingTile(),




                    Divider(height: 10,color: Colors.grey.shade300,thickness: 1,),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                      Poppins(text: 'EXTRAS',color: Get.theme.secondaryHeaderColor,fontSize: 10,fontWeight: FontWeight.w500,),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '7 ',  // Main number
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Get.theme.hintColor,
                              ),
                            ),
                            TextSpan(
                              text: '(B 0, LB 6, NB 0, WD 1)',  // Rest of the text
                              style: TextStyle(
                                fontSize: 10,
                                color: Get.theme.secondaryHeaderColor,  // Grey color
                              ),
                            ),
                          ],
                        ),
                      )


                    ],),
                    Divider(height: 10,color: Colors.grey.shade300,thickness: 1,) ,
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                      Poppins(text: 'TOTAL RUNS',color: Get.theme.secondaryHeaderColor,fontSize: 10,fontWeight: FontWeight.w500,),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '65/2 ',  // Main number
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Get.theme.hintColor,
                              ),
                            ),
                            TextSpan(
                              text: ' (10.0 Ov, RR:6.50)',  // Rest of the text
                              style: TextStyle(
                                fontSize: 10,
                                color: Get.theme.secondaryHeaderColor,  // Grey color
                              ),
                            ),
                          ],
                        ),
                      )
                    ],),
                    Divider(height: 10,color: Colors.grey.shade300,thickness: 1,)


                  ],
                ),):SizedBox(),
              SizedBox(height: 10,),
            ],
          ),


          select==1?Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,spacing: 10,
                children: [
                Image.asset(Images.que,height: 24,width: 24,),
                  Poppins(text: 'Queensland Fall of  Wickets',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,)

              ],),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '2/1',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color:  Get.theme.secondaryHeaderColor, // Make "2/1" red
                      ),
                    ),
                    TextSpan(
                      text: ' (Ben McDermott, 1.1 Overs) , 16/2 (Max Bryant, 4.1 Overs)',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Get.theme.hintColor, // Default color
                      ),
                    ),
                  ],
                ),
              ),


              SizedBox(height: 10,),




              Container(margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),decoration: BoxDecoration(color:Colors.grey.shade200,borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.shade300,width: 1)),padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                child:
                Column(
                  children: [
                    Row(children: [
                      Expanded(flex: 5,child: Row(spacing: 10,children: [

                        Row(spacing: 10,children: [Image.asset(Images.que,height: 24,width: 24,),Poppins(text: 'Tasmania Bowling',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,)],
                        )


                      ],)),
                      Expanded(flex: 1,child: Row(spacing: 10,children: [Poppins(text: 'O',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,)],)),
                      Expanded(flex: 1,child: Row(spacing: 10,children: [Poppins(text: 'M',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,)],)),
                      Expanded(flex: 1,child: Row(spacing: 10,children: [Poppins(text: 'R',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,)],)),
                      Expanded(flex: 1,child: Row(spacing: 10,children: [Poppins(text: 'W',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,)],)),

                    ],),
                    SizedBox(height: 10,),

                    PlayersBowlingTile(),
                    PlayersBowlingTile(),
                    PlayersBowlingTile(),
                    PlayersBowlingTile(),
                    PlayersBowlingTile(),
                    PlayersBowlingTile(),






                  ],
                ),),
            ],
          ):SizedBox(),


        ],
      ),
    );
  }
}


class CommentarySection extends StatelessWidget {
  const CommentarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Poppins(text: 'End of Over 16 (13 Runs)',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,),
            Poppins(text: 'INDIA- Innings: 120/5',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,),
          ],),
          SizedBox(height: 20,),

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Column(spacing: 10,
              children: [
                Row(spacing: 30,
                  children: [
                    Poppins(text: 'Hugo Burdon',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,),
                    Poppins(text: '11(5)',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,),
                  ],
                ),
                Row(spacing: 30,
                  children: [
                    Poppins(text: 'Hugo Burdon',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,),
                    Poppins(text: '11(5)',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,),
                  ],
                ),
              ],
            ),


            Row(spacing: 30,
              children: [
                Poppins(text: 'Hugo Burdon',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,),
                Poppins(text: '11(5)',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.secondaryHeaderColor,),

              ],
            ),
          ],),
SizedBox(height: 20,),

          CustomTile(),
          CustomTile(),
          CustomTile(),
          CustomTile(),
          CustomTile(),
          CustomTile(),








        ],
      ),
    );
  }
}


class GraphSection extends StatelessWidget {
  const GraphSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20,),
        Image.asset(Images.graphimg1,height: 150,),
        SizedBox(height: 30,),
        Image.asset(Images.graphimg2,height: 150,),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Container(decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(8)),padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),child: Center(child: Poppins(text: 'All',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w400,)),)),
              Expanded(child: Container(decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(8)),padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),child: Row(spacing: 5,children: [CircleAvatar(radius: 5,backgroundColor: Colors.red,),Poppins(text: '1s - 1',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w400,)],))),
              Expanded(child: Container(decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(8)),padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),child: Row(spacing: 5,children: [CircleAvatar(radius: 5,backgroundColor: Colors.yellow,),Poppins(text: '2s,3s - 1',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w400,)],))),
              Expanded(child: Container(decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(8)),padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),child: Row(spacing: 5,children: [CircleAvatar(radius: 5,backgroundColor: Colors.deepPurpleAccent,),Poppins(text: '4s - 0',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w400,)],))),
              Expanded(child: Container(decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(8)),padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),child: Row(spacing: 5,children: [CircleAvatar(radius: 5,backgroundColor: Colors.blue,),Poppins(text: '6s - 0',fontSize: 12,color: Colors.black,fontWeight: FontWeight.w400,)],))),

          ],),
        )



      ],
    );
  }
}






class CustomTile extends StatelessWidget {
  const CustomTile({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey,width: 1,),)),padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start,spacing: 10,crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(radius: 20,backgroundImage: AssetImage(Images.M),),
                    Poppins(text: '15.2',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,)
                  ],
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Poppins(text: 'Mitchel Owen to Hugo Burdon, 2 Runs',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                    Poppins(text: '2 runs, Played towards mid wicket.',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,)
                  ],
                ),
              ],),
          ],
        ),
      )
      ;
  }
}



class PlayersBattingTile extends StatefulWidget {
  const PlayersBattingTile({super.key});

  @override
  State<PlayersBattingTile> createState() => _PlayersBattingTileState();
}

class _PlayersBattingTileState extends State<PlayersBattingTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.zero,
      minTileHeight: 20,
      showTrailingIcon: false,
      initiallyExpanded: _isExpanded,
      onExpansionChanged: (expanded) {
        setState(() {
          _isExpanded = expanded;
        });
      },
      title: Row(
        children: [
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Icon(
                  _isExpanded ? Icons.remove_circle_outline : Icons.add_circle_outline,
                  size: 24,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Poppins(
                      text: 'Adil Rashid',
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Get.theme.secondaryHeaderColor,
                    ),
                    Poppins(
                      text: 'c Adil Rashid b Jofar',
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Get.theme.hintColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Poppins(
                text: '14',
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Get.theme.secondaryHeaderColor,
              )),
          Expanded(
              flex: 1,
              child: Poppins(
                text: '14',
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Get.theme.secondaryHeaderColor,
              )),
          Expanded(
              flex: 1,
              child: Poppins(
                text: '2',
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Get.theme.secondaryHeaderColor,
              )),
          Expanded(
              flex: 1,
              child: Poppins(
                text: '1',
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Get.theme.secondaryHeaderColor,
              )),
          Expanded(
              flex: 1,
              child: Poppins(
                text: '15',
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Get.theme.secondaryHeaderColor,
              )),
        ],
      ),
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Poppins(
                        text: 'Off Side',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Get.theme.secondaryHeaderColor,
                      ),
                      Poppins(
                        text: '0',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Get.theme.hintColor,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Poppins(
                        text: 'On Side',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Get.theme.secondaryHeaderColor,
                      ),
                      Poppins(
                        text: '0',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Get.theme.hintColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Image.asset(Images.graphimg2, height: 150),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildStatButton('All', Colors.grey.shade200, Colors.black),
                _buildStatButtonWithIcon('1s - 1', Colors.red),
                _buildStatButtonWithIcon('2s,3s - 1', Colors.yellow),
                _buildStatButtonWithIcon('4s - 0', Colors.deepPurpleAccent),
                _buildStatButtonWithIcon('6s - 0', Colors.blue),
              ],
            ),
            SizedBox(height: 20),
          ],
        )
      ],
    );
  }

  Widget _buildStatButton(String text, Color bgColor, Color textColor) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Center(
          child: Poppins(
            text: text,
            fontSize: 12,
            color: textColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildStatButtonWithIcon(String text, Color iconColor) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 5, backgroundColor: iconColor),
            SizedBox(width: 5),
            Poppins(text: text, fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
          ],
        ),
      ),
    );
  }
}



















class PlayersBowlingTile extends StatefulWidget {
  const PlayersBowlingTile({super.key});

  @override
  State<PlayersBowlingTile> createState() => _PlayersBowlingTileState();
}

class _PlayersBowlingTileState extends State<PlayersBowlingTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.zero,
      minTileHeight: 20,
      showTrailingIcon: false,
      initiallyExpanded: _isExpanded,
      onExpansionChanged: (expanded) {
        setState(() {
          _isExpanded = expanded;
        });
      },
      title: Row(
        children: [
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Icon(
                  _isExpanded ? Icons.remove_circle_outline : Icons.add_circle_outline,
                  size: 24,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Poppins(
                      text: 'Adil Rashid',
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Get.theme.secondaryHeaderColor,
                    ),
                    Poppins(
                      text: 'c Adil Rashid b Jofar',
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Get.theme.hintColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          _buildStatColumn('6'),
          _buildStatColumn('2'),
          _buildStatColumn('115'),
          _buildStatColumn('3'),
        ],
      ),
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSideColumn('Off Side', '0'),
                  _buildSideColumn('On Side', '0'),
                ],
              ),
            ),
            Image.asset(Images.graphimg2, height: 150),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildStatButton('All', Colors.grey.shade200, Colors.black),
                _buildStatButtonWithIcon('1s - 1', Colors.red),
                _buildStatButtonWithIcon('2s,3s - 1', Colors.yellow),
                _buildStatButtonWithIcon('4s - 0', Colors.deepPurpleAccent),
                _buildStatButtonWithIcon('6s - 0', Colors.blue),
              ],
            ),
            SizedBox(height: 20),
          ],
        )
      ],
    );
  }

  Widget _buildStatColumn(String text) {
    return Expanded(
      flex: 1,
      child: Poppins(
        text: text,
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: Get.theme.secondaryHeaderColor,
      ),
    );
  }

  Widget _buildSideColumn(String title, String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Poppins(
          text: title,
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: Get.theme.secondaryHeaderColor,
        ),
        Poppins(
          text: value,
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: Get.theme.hintColor,
        ),
      ],
    );
  }

  Widget _buildStatButton(String text, Color bgColor, Color textColor) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Center(
          child: Poppins(
            text: text,
            fontSize: 12,
            color: textColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildStatButtonWithIcon(String text, Color iconColor) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 5, backgroundColor: iconColor),
            SizedBox(width: 5),
            Poppins(text: text, fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
          ],
        ),
      ),
    );
  }
}



