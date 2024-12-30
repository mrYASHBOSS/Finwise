import 'package:finwise/screens/news_1.dart';
import 'package:finwise/screens/news_2.dart';
import 'package:finwise/screens/news_3.dart';
import 'package:finwise/screens/notification.dart';
import 'package:finwise/utility/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'news_4.dart';

class News_Article extends StatefulWidget {
  static const String id = "news-screen";

  const News_Article({super.key});

  @override
  State<News_Article> createState() => _News_ArticleState();
}

class _News_ArticleState extends State<News_Article> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.BackgroundDarkModeAndLetters,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'News & Article',
                    style: TextStyle(
                      color: AppColors.LightGreen,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(NotificationPage());
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      child: CircleAvatar(
                        backgroundColor: AppColors.LightGreen,
                        child: Image.asset(
                          'assets/images/bell_icon.png',
                          width: 20,
                          height: 20,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.LettersAndIcons,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 30, right: 20, top: 20, bottom: 100),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        NewsTill(
                          OnTap: () {
                            Get.to(NewsOne());
                          },
                          newsIcon: Icon(FontAwesomeIcons.gem),
                          Title: "News For Gold!",
                          Subtitle:
                              "Gold prices extended declines on Tuesday...",
                          timeAndData: "07:00 - November 24",
                          IconColor: AppColors.LettersAndIcons,
                        ),
                        NewsTill(
                          OnTap: () {
                            Get.to(NewsTwo());
                          },
                          newsIcon: Icon(FontAwesomeIcons.chartBar),
                          Title: "Stock Market Update!",
                          Subtitle:
                              "Nifty 50 dips below 24,200; Sensex gives up...",
                          timeAndData: "12:20 - November 24",
                          IconColor: AppColors.LettersAndIcons,
                        ),
                        NewsTill(
                          OnTap: () {
                            Get.to(NewsThree());
                          },
                          newsIcon: Icon(FontAwesomeIcons.house),
                          Title: "Assets News!",
                          Subtitle:
                              "Gentari to extend green footprint in India with \$900 mn Brookfield Asset deal",
                          timeAndData: "15:40 - November 24",
                          IconColor: AppColors.LettersAndIcons,
                        ),
                        NewsTill(
                          OnTap: () {
                            Get.to(NewsFour());
                          },
                          newsIcon: Icon(FontAwesomeIcons.downLong),
                          Title: "Top Losing Stocks!",
                          Subtitle:
                              "Set up your automatic or any time anywhere\nsavings to meet your savings goal...",
                          timeAndData: "17:20 - November 24",
                          IconColor: AppColors.LettersAndIcons,
                        ),
                        NewsTill(
                          OnTap: () {
                            Get.to(NewsTwo());
                          },
                          newsIcon: Icon(FontAwesomeIcons.upLong),
                          Title: "Top Grossing Share!",
                          Subtitle:
                              "Set up your automatic or any time anywhere\nsavings to meet your savings goal...",
                          timeAndData: "17:20 - November 24",
                          IconColor: AppColors.LettersAndIcons,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsTill extends StatelessWidget {
  final Icon newsIcon;
  final String Title, Subtitle, timeAndData;
  final Color IconColor;
  final Function OnTap;

  const NewsTill({
    super.key,
    required this.newsIcon,
    required this.Title,
    required this.Subtitle,
    required this.timeAndData,
    required this.IconColor,
    required this.OnTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        OnTap();
      },
      child: Column(
        children: [
          SizedBox(
            height: 14,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.mainGreen,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: newsIcon,
                  color: IconColor,
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Title,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: AppColors.LightGreen),
                    ),
                    Text(
                      Subtitle,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      maxLines: 2,
                      style: GoogleFonts.leagueSpartan(
                        fontSize: 12,
                        color: AppColors.LightGreen,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                timeAndData,
                style: GoogleFonts.poppins(
                    fontSize: 12, color: AppColors.LightBlueButton),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            width: double.infinity,
            height: 2,
            color: AppColors.LightGreen,
          ),
        ],
      ),
    );
  }
}
