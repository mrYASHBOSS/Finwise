import 'package:finwise/utility/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                    "Change Profile",
                    style: TextStyle(
                      color: AppColors.LightGreen,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(width: 25,)
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.LettersAndIcons,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ProfileHeader(),
                        AccountForm(),
                        // _buildAcceptButton(),
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

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(58.5),
              child: Image.asset(
                'assets/images/Smart_pic.png',
                width: 117,
                height: 117,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 12,
              bottom: 0,
              child: Image.asset(
                'assets/images/Ic_icon_cam.png',
                width: 25,
                height: 25,
              ),
            ),
          ],
        ),
        SizedBox(height: 18),
        Text(
          'John Smith',
          style: TextStyle(
            color: Color(0xFFF1FFF3),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 49),
      ],
    );
  }
}

class AccountForm extends StatelessWidget {
  const AccountForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Profile Updating',
            style: TextStyle(
              color: Color(0xFFF1FFF3),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 18),
          Text(
            'Username',
            style: TextStyle(
              color: Color(0xFFF1FFF3),
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            cursorColor: AppColors.LettersAndIcons,
            enableInteractiveSelection: false,
            initialValue: 'John Smith',
            style: TextStyle(
              color: Color(0xFF093030),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFDFF7E2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 6,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Phone',
            style: TextStyle(
              color: Color(0xFFF1FFF3),
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            cursorColor: AppColors.LettersAndIcons,
            enableInteractiveSelection: false,
            initialValue: '+91 555 5555 55',
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Color(0xFF093030),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFDFF7E2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 6,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Email Address',
            style: TextStyle(
              color: Color(0xFFF1FFF3),
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            enableInteractiveSelection: false,
            initialValue: 'example@example.com',
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Color(0xFF093030),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300,
            ),
            cursorColor: AppColors.LettersAndIcons,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFDFF7E2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 6,
              ),
            ),
          ),
          SizedBox(height: 44),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF00D09E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(vertical: 7),
            ),
            child: Text(
              'Update Profile',
              style: TextStyle(
                color: Color(0xFF093030),
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
