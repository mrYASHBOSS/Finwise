import 'package:finwise/utility/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BackgroundDarkModeAndLetters,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      'assets/images/Ic_back.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Notification',
                    style: TextStyle(
                      color: AppColors.LightGreen,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      child: CircleAvatar(
                        backgroundColor: AppColors.BlueButton,
                        child: Image.asset(
                          'assets/images/Ic_white_bell.png',
                          width: 20,
                          height: 20,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  )
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
                  padding: EdgeInsets.only(left: 30, right: 30, top: 30,bottom: 14),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Today',
                          style: GoogleFonts.leagueSpartan(
                            color: AppColors.LightGreen,
                            fontSize: 12,
                          ),
                        ),
                        NewsTill(
                          newsIcon: Icon(FontAwesomeIcons.bell),
                          Title: "Reminder!",
                          Subtitle:
                              "Set up your automatic or any time anywhere\nsavings to meet your savings goal...",
                          timeAndData: "12:20 - November 24",
                          IconColor: AppColors.LettersAndIcons,
                        ),
                        NewsTill(
                          newsIcon: Icon(FontAwesomeIcons.star),
                          Title: "New Update",
                          Subtitle:
                              "Set up your automatic or any time anywhere\nsavings to meet your savings goal...",
                          timeAndData: "15:20 - November 24",
                          IconColor: AppColors.LettersAndIcons,
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          'Yesterday',
                          style: GoogleFonts.leagueSpartan(
                            color: AppColors.LightGreen,
                            fontSize: 12,
                          ),
                        ),
                        NewsTill(
                          newsIcon: Icon(FontAwesomeIcons.dollarSign),
                          Title: "Transactions",
                          Subtitle: "A new transaction has been registered",
                          timeAndData: "17:20 - November 24",
                          IconColor: AppColors.LettersAndIcons,
                        ),
                        NewsTill(
                          newsIcon: Icon(FontAwesomeIcons.bell),
                          Title: "Reminder!",
                          Subtitle:
                              "Set up your automatic or any time anywhere\nsavings to meet your savings goal...",
                          timeAndData: "08:20 - November 24",
                          IconColor: AppColors.LettersAndIcons,
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          'This Weekend',
                          style: GoogleFonts.leagueSpartan(
                            color: AppColors.LightGreen,
                            fontSize: 12,
                          ),
                        ),
                        NewsTill(
                          newsIcon: Icon(FontAwesomeIcons.arrowTrendDown),
                          Title: "Transactions",
                          Subtitle: "A new transaction has been registered",
                          timeAndData: "17:20 - November 24",
                          IconColor: AppColors.LettersAndIcons,
                        ),
                        NewsTill(
                          newsIcon: Icon(FontAwesomeIcons.dollarSign),
                          Title: "Transactions",
                          Subtitle: "A new transaction has been registered",
                          timeAndData: "17:20 - November 24",
                          IconColor: AppColors.LettersAndIcons,
                        ),
                        NewsTill(
                          newsIcon: Icon(FontAwesomeIcons.arrowTrendUp),
                          Title: "Transactions",
                          Subtitle: "A new transaction has been registered",
                          timeAndData: "17:20 - November 24",
                          IconColor: AppColors.LettersAndIcons,
                        ),
                        NewsTill(
                          newsIcon: Icon(FontAwesomeIcons.bell),
                          Title: "Reminder!",
                          Subtitle:
                              "Set up your automatic or any time anywhere\nsavings to meet your savings goal...",
                          timeAndData: "08:20 - November 24",
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

  const NewsTill({
    super.key,
    required this.newsIcon,
    required this.Title,
    required this.Subtitle,
    required this.timeAndData,
    required this.IconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      //Get.toNamed(News_Article.id);
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
