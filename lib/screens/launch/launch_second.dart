import 'package:finwise/screens/Login_SignUp/ForgotPasswordScreen.dart';
import 'package:finwise/screens/Login_SignUp/RegistrationScreen.dart';
import 'package:finwise/screens/Login_SignUp/loginScreen.dart';
import 'package:finwise/utility/constants//AppColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class launch_second extends StatefulWidget {
  static const String id = "launch-second";

  const launch_second({super.key});

  @override
  State<launch_second> createState() => _launch_secondState();
}

class _launch_secondState extends State<launch_second> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: AppColors.BackgroundDarkModeAndLetters,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Ic_light_green_appIcon.png",
                  height: 114.78,
                  width: 108,
                ),
                Text(
                  "FinWise",
                  style: GoogleFonts.poppins(
                    color: AppColors.mainGreen,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur \n adipiscing elit, sed do different.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.leagueSpartan(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(LoginScreen.id);
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
                          'Log In',
                          style: GoogleFonts.poppins(
                            color: AppColors.BackgroundDarkModeAndLetters,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(RegisterScreen.id);
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
                          'Sign Up',
                          style: GoogleFonts.poppins(
                            color: AppColors.BackgroundDarkModeAndLetters,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(ForgotPasswordScreen.id);
                  },
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.leagueSpartan(
                      color: AppColors.LightGreen,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
