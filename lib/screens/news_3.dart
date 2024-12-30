import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/constants/AppColors.dart';

class NewsThree extends StatefulWidget {
  const NewsThree({super.key});

  @override
  State<NewsThree> createState() => _NewsThreeState();
}

class _NewsThreeState extends State<NewsThree> {
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
                    'Assets News',
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
                        backgroundColor: AppColors.LightGreen,
                        child: Image.asset(
                          'assets/images/bell_icon.png',
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
                  padding: EdgeInsets.only(
                      left: 20, right: 20, top: 30,bottom: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/asset.jpeg"),
                        SizedBox(height: 16),
                        Text(
                          "Gentari to extend green footprint in India with \$900 mn Brookfield Asset deal",
                          style: TextStyle(
                            color: AppColors.LightGreen,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "The precious metal fell 3.2% on Monday, its deepest one-day decline in more than five months, on news that Israel looked set to approve a US plan for a ceasefire with the Iran-backed Hezbollah, with further pressure from Trump's nomination of Scott Bessent as the US Treasury secretary.",
                          softWrap: true,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: AppColors.LightGreen,
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "\u2022 Traders will also keep a close eye on US consumer confidence data and the minutes from the Fed's November meeting later in the day.",
                          softWrap: true,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: AppColors.LightGreen,
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "\u2022 Spot silver slipped by 0.1% to \$2,614.80 per ounce, platinum shed 1.1% to \$928.40 and palladium was down 0.2% to \$971.10.",
                          softWrap: true,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: AppColors.LightGreen,
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "Meanwhile, the Kremlin said it had noted that Trump's circle was speaking about a potential peace plan for Ukraine.\"This has reduced the geopolitical risk premium, leading to a decline in gold prices,\" said Soni Kumari, a commodity strategist at ANZ, adding that a stronger US dollar is also weighing on investor appetite for gold. The dollar was up by 0.3%, after US President-elect Donald Trump vowed tariffs against Mexico, Canada and China, reducing gold\'s appeal for holders of other currencies.",
                          softWrap: true,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: AppColors.LightGreen,
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
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
