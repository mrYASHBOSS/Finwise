import 'package:finwise/screens/Login_SignUp/RegistrationScreen.dart';
import 'package:finwise/utility/constants/AppColors.dart';
import 'package:finwise/utility/constants/customAlertBox.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const String id = "forgot-password";

  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BackgroundDarkModeAndLetters,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 80),
            Text(
              'Forgot Password',
              style: TextStyle(
                color: AppColors.LightGreen,
                fontSize: 30,
                fontFamily: "Poppins",
              ),
            ),
            SizedBox(height: 65),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.LettersAndIcons,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                padding: EdgeInsets.only(left: 30, right: 30, top: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reset Password?',
                      style: TextStyle(
                        color: AppColors.mainGreen,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 14),
                    Text(
                      "Please Check Your Email Address To Change Your Password. After Change the Password Go To The Login Screen And Login To The Application.",
                      style: GoogleFonts.leagueSpartan(
                        color: AppColors.LightGreen,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height: 30),
                    ResetPasswordForm(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({Key? key}) : super(key: key);

  @override
  _ResetPasswordFormState createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter email address',
              style: TextStyle(
                color: Color(0xFFDFF7E2),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.LightGreen,
                hintText: 'example@example.com',
                hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.45),
                    fontSize: 16,
                    fontFamily: "Poppins"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 19,
                  vertical: 14,
                ),
              ),
              style: TextStyle(
                color: AppColors.LettersAndIcons,
                fontSize: 16,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                    .hasMatch(value)) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                height: 32,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      // TODO: Implement password reset logic
                      await _auth
                          .sendPasswordResetEmail(
                        email: _emailController.text.toString().trim(),
                      )
                          .then((value) {
                        customAlertBox(context,
                            "Please Check Your Email Address To Change Your Password. After Change the Password Go To The Login Screen And Login To The Application.");
                      }).onError((error, stackTrace) {
                        customAlertBox(context, "Email not valid please check your email");
                      });
                    }
                    _emailController.clear();
                  },
                  child: Text(
                    'Change Password',
                    style: TextStyle(
                        color: AppColors.LettersAndIcons,
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 120),
            Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Color(0xFF00D09E),
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                  ),
                  children: [
                    TextSpan(text: "Don't have an account? "),
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        color: Color(0xFF00D09E),
                        fontWeight: FontWeight.w600,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.toNamed(RegisterScreen.id),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(RegisterScreen.id);
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: AppColors.LettersAndIcons,
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFF0E3E3E),
                  backgroundColor: Color(0xFFDFF7E2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 47,
                    vertical: 5,
                  ),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
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
