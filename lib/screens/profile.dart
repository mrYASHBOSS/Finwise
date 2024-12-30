import 'package:finwise/screens/EditProfile.dart';
import 'package:finwise/screens/SecurityScreen.dart';
import 'package:finwise/screens/launch/launch_second.dart';
import 'package:finwise/screens/notification.dart';
import 'package:finwise/utility/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../authentication/AuthServices.dart';

class ProfileScreen extends StatelessWidget {
  static const String id = "profile-screen";

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BackgroundDarkModeAndLetters,
      body: Column(
        children: [
          ProfileHeader(),
          ProfileContent(),
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Profile',
            style: TextStyle(
              color: AppColors.LightGreen,
              fontSize: 20,
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
          )
        ],
      ),
    );
  }
}

class ProfileContent extends StatefulWidget {
  const ProfileContent({Key? key}) : super(key: key);

  @override
  State<ProfileContent> createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.LettersAndIcons,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70),
            topRight: Radius.circular(70),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 58.5,
                backgroundImage: AssetImage('assets/images/Smart_pic.png'),
              ),
              SizedBox(height: 10),
              Text(
                "John Smith",
                style: TextStyle(
                  color: AppColors.LightGreen,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Get.to(EditProfile());
                },
                child: _buildProfileOption('Edit Profile',
                    'assets/images/Ic_Profile.png', AppColors.LightBlueButton),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(SecurityScreen());
                },
                child: _buildProfileOption('Security',
                    'assets/images/Ic_security.png', AppColors.BlueButton),
              ),
              // _buildProfileOption('Setting', 'assets/images/Ic_settings.png',
              //     AppColors.OceanBlueButton),
              // _buildProfileOption('Help', 'assets/images/Ic_help.png',
              //     AppColors.LightBlueButton),
              GestureDetector(
                onTap: () => _myDialogBox(context),
                child: _buildProfileOption('Logout',
                    'assets/images/Ic_logout.png', AppColors.BlueButton),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _myDialogBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.BackgroundDarkModeAndLetters,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "End Session",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.LightGreen,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Are you sure you want to log out?",
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 14,
                      color: AppColors.LightGreen,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () async {
                      Get.offNamed(launch_second.id);
                      await AuthServices().signOut();
                    },
                    child: Container(
                      height: 45,
                      width: 207,
                      decoration: BoxDecoration(
                        color: AppColors.mainGreen,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'Yes,Logout',
                          style: GoogleFonts.poppins(
                            color: AppColors.BackgroundDarkModeAndLetters,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 45,
                      width: 207,
                      decoration: BoxDecoration(
                        color: AppColors.LightGreen,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'Cancel',
                          style: GoogleFonts.poppins(
                            color: AppColors.BackgroundDarkModeAndLetters,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget _buildProfileOption(
    String title,
    String imageUrl,
    Color kColor,
  ) {
    return Padding(
      padding: EdgeInsets.only(bottom: 34),
      child: Row(
        children: [
          Container(
            width: 47,
            height: 43,
            decoration: BoxDecoration(
              color: kColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              imageUrl,
              height: 28,
              width: 28,
            ),
          ),
          SizedBox(width: 13),
          Text(
            title,
            style: TextStyle(
              color: AppColors.LightGreen,
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }
}

// class ProfileFooter extends StatelessWidget {
//   const ProfileFooter({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(top: 73),
//       padding: const EdgeInsets.fromLTRB(60, 36, 60, 41),
//       decoration: BoxDecoration(
//         color: const Color(0xFF0E3E3E),
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(70),
//           topRight: Radius.circular(70),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Image.network(
//               'https://cdn.builder.io/api/v1/image/assets/TEMP/7c93f5bc242ce85a02db10cb7cdcafeb8549759cfb076757e5f19c00319f34d9?placeholderIfAbsent=true&apiKey=c80b315de94141af9020c3a5030dc792',
//               width: 25,
//               height: 31),
//           Image.network(
//               'https://cdn.builder.io/api/v1/image/assets/TEMP/3e05f850acd886ad8194d11e307de03fc6efff4cb67e578a6c92bbdbcc8b2976?placeholderIfAbsent=true&apiKey=c80b315de94141af9020c3a5030dc792',
//               width: 31,
//               height: 30),
//           Image.network(
//               'https://cdn.builder.io/api/v1/image/assets/TEMP/535633ec20fc1cb28aeeaf2d7ef7857ef904dee887420310224da804004bc685?placeholderIfAbsent=true&apiKey=c80b315de94141af9020c3a5030dc792',
//               width: 33,
//               height: 25),
//           Image.network(
//               'https://cdn.builder.io/api/v1/image/assets/TEMP/94e947dbe8d5f5e36f7714386d84b9a3eac0a998586889d40d9ec3234299debf?placeholderIfAbsent=true&apiKey=c80b315de94141af9020c3a5030dc792',
//               width: 27,
//               height: 23),
//           Image.network(
//               'https://cdn.builder.io/api/v1/image/assets/TEMP/88dbae38441b3b6ebfbcb2e7b2c2b2e7ff2d1a9cdcd2b41b907e1e78fa73e342?placeholderIfAbsent=true&apiKey=c80b315de94141af9020c3a5030dc792',
//               width: 22,
//               height: 27),
//         ],
//       ),
//     );
//   }
// }
