import 'package:finwise/screens/notification.dart';
import 'package:finwise/utility/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TermConditionScreen extends StatefulWidget {
  const TermConditionScreen({super.key});

  @override
  State<TermConditionScreen> createState() => _TermConditionScreenState();
}

class _TermConditionScreenState extends State<TermConditionScreen> {
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
                    'Terms And Conditions',
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
                padding: EdgeInsets.only(left: 32, right: 32, top: 30),
                decoration: BoxDecoration(
                  color: AppColors.LettersAndIcons,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTermsText(),
                    SizedBox(height: 25),
                    _buildWebsiteLink(),
                    SizedBox(height: 15),
                    _buildAcceptanceCheckbox(),
                    SizedBox(height: 15),
                    _buildAcceptButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTermsText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Est fugiat assumenda aut reprehenderit',
          style: TextStyle(
            color: AppColors.LightGreen,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 16),
        Text(
          "Lorem ipsum dolor sit amet. Et odio officia aut voluptate internos est omnis vitae ut architecto sunt non tenetur fuga ut provident vero. Quo aspernatur facere et consectetur ipsum et facere corrupti est asperiores facere. Est fugiat assumenda aut reprehenderit voluptatem sed.",
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
          "\u2022 Aut ipsum Quis qui porro quasi aut minus placeat!",
          softWrap: true,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: AppColors.LightGreen,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          "\u2022 Vel exercitationem quam vel eligendi rerum At harum obcaecati et.",
          softWrap: true,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: AppColors.LightGreen,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          "\u2022 Architecto sunt non tenetur fuga.",
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
          "Vel exercitationem quam vel eligendi rerum At harum obcaecati et nostrum beatae? Ea accusantium dolores qui rerum aliquam est perferendis mollitia et ipsum ipsa qui enim autem At corporis sunt. Aut odit quisquam est reprehenderit itaque aut accusantium dolor qui neque repellat.",
          softWrap: true,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: AppColors.LightGreen,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }

  Widget _buildWebsiteLink() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Read the terms and conditions in more detail at',
          style: TextStyle(
            color: AppColors.LightGreen,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            'www.finwiseapp.de',
            style: TextStyle(
              color: AppColors.BlueButton,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAcceptanceCheckbox() {
    return Row(
      children: [
        Image.asset(
          'assets/images/Ic_check.png',
          width: 20,
          height: 20,
        ),
        SizedBox(width: 9),
        Expanded(
          child: Text(
            'I accept all the terms and conditions',
            style: TextStyle(
              color: AppColors.LightGreen,
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAcceptButton() {
    return Padding(
      padding: EdgeInsets.only(left: 60.0),
      child: GestureDetector(
        onTap: () => Get.back(),
        child: Container(
          height: 45,
          width: 207,
          decoration: BoxDecoration(
            color: AppColors.mainGreen,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              'Accept',
              style: GoogleFonts.poppins(
                color: AppColors.BackgroundDarkModeAndLetters,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
