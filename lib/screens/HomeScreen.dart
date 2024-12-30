import 'dart:typed_data';

import 'package:finwise/screens/CategoryScreen.dart';
import 'package:finwise/screens/GoalkeepingScreen.dart';
import 'package:finwise/screens/homePage.dart';
import 'package:finwise/screens/news_article.dart';
import 'package:finwise/screens/profile.dart';
import 'package:finwise/utility/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home-screen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.BackgroundDarkModeAndLetters,
      body: SafeArea(
        bottom: false,
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
            HomePage(),
            News_Article(),
            GoalKeepingScreen(),
            MobileScanner(
              controller: MobileScannerController(
                detectionSpeed: DetectionSpeed.noDuplicates,
                returnImage: true,
              ),
              onDetect: (capture) {
                final List<Barcode> barcodes = capture.barcodes;
                final Uint8List? image = capture.image;
                for (final barcode in barcodes) {
                  print('Barcode Found ${barcode.rawValue}');
                }
                if (image != null) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: AppColors.mainGreen,
                          title: Text(
                            barcodes.first.rawValue ?? "",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.LettersAndIcons,
                            ),
                          ),
                          content: Image(image: MemoryImage(image)),
                        );
                      });
                }
              },
            ),
            CategoryScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        decoration: BoxDecoration(
          color: AppColors.DarkModeGreenBar,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70),
            topRight: Radius.circular(70),
          ),
        ),
        child: GNav(
          // rippleColor: AppColors.mainGreen, // tab button ripple color when pressed
          // hoverColor: Colors.red, // tab button hover color
          // tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
          // tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
          // tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
          // gap: 2, // the tab button gap between icon and text
          haptic: true,
          // haptic feedback
          tabBorderRadius: 40,
          curve: Curves.easeOutExpo,
          // tab animation curves
          duration: Duration(milliseconds: 900),
          // tab animation duration
          color: AppColors.LightGreen,
          // unselected icon color
          activeColor: AppColors.BackgroundDarkModeAndLetters,
          // selected icon and text color
          iconSize: 24,
          // tab button icon size
          tabBackgroundColor: AppColors.mainGreen,
          // selected tab background color
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          // navigation bar padding
          selectedIndex: _currentIndex,
          onTabChange: (index) {
            setState(() {
              _pageController.jumpToPage(index);
            });
          },
          tabs: [
            GButton(
              icon: FontAwesomeIcons.house,
            ),
            GButton(
              icon: FontAwesomeIcons.newspaper,
            ),
            GButton(
              icon: FontAwesomeIcons.list,
            ),
            GButton(
              icon: FontAwesomeIcons.qrcode,
            ),
            GButton(
              icon: FontAwesomeIcons.layerGroup,
            ),
            GButton(
              icon: FontAwesomeIcons.user,
            )
          ],
        ),
      ),
    );
  }
}
