import 'package:finwise/authentication/AuthServices.dart';
import 'package:finwise/screens/HomeScreen.dart';
import 'package:finwise/screens/Login_SignUp/ForgotPasswordScreen.dart';
import 'package:finwise/screens/Login_SignUp/RegistrationScreen.dart';
import 'package:finwise/utility/constants/AppColors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "login-screen";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool isLoading = false;

  void LoginUser() async {
    String res = await AuthServices().LoginUser(
      txtEmail: emailController.text.toString().trim(),
      txtPassword: passwordController.text.toString().trim(),
    );
    if (res == "Successfully Login") {
      Get.offNamed(HomeScreen.id);
    } else {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BackgroundDarkModeAndLetters,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(60),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    color: AppColors.LightGreen,
                    fontSize: 30,
                    fontFamily: "Poppins",
                  ),
                ),
              ), //Welcome
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.LettersAndIcons,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 60),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildTextFormField(
                                  label: "Email",
                                  controller: emailController,
                                  hintText: "example@example.com",
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your email';
                                    }
                                    if (!RegExp(
                                            r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                        .hasMatch(value)) {
                                      return 'Please enter a valid email address';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                _buildTextFormField(
                                  label: "Password",
                                  controller: passwordController,
                                  hintText: "● ● ● ● ● ● ● ● ",
                                  obscureText: _obscurePassword,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter a password';
                                    }
                                    if (value.length < 8) {
                                      return 'Password must be at least 8 characters long';
                                    }
                                    return null;
                                  },
                                  suffixIcon: IconButton(
                                    icon: Icon(_obscurePassword
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined),
                                    onPressed: () {
                                      setState(() {
                                        _obscurePassword = !_obscurePassword;
                                      });
                                    },
                                  ),
                                ),
                                // Padding(
                                //   padding: const EdgeInsets.all(8.0),
                                //   child: Text(
                                //     "Email",
                                //     style: TextStyle(
                                //       color: AppColors.LightGreen,
                                //       fontSize: 15,
                                //       fontFamily: "Poppins",
                                //     ),
                                //   ),
                                // ),
                                // Container(
                                //   height: 41,
                                //   width: 356,
                                //   decoration: BoxDecoration(
                                //     color: AppColors.LightGreen,
                                //     borderRadius: BorderRadius.circular(18),
                                //   ),
                                //   child: TextField(
                                //     textAlign: TextAlign.start,
                                //     style: TextStyle(
                                //         fontSize: 16,
                                //         color: AppColors.LettersAndIcons,
                                //         fontFamily: "Poppins"),
                                //     // cursorColor:
                                //     //     AppColors.LettersAndIcons,
                                //     showCursor: false,
                                //     keyboardType: TextInputType.emailAddress,
                                //     decoration: InputDecoration(
                                //       contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 4),
                                //       border: InputBorder.none,
                                //       hintText: "example@example.com",
                                //       hintStyle: TextStyle(
                                //           color: Colors.black.withOpacity(0.45),
                                //           fontSize: 16,
                                //           fontFamily: "Poppins"),
                                //     ),
                                //   ),
                                // ),
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //       bottom: 8.0, top: 10, left: 8, right: 8),
                                //   child: Text(
                                //     "Password",
                                //     style: TextStyle(
                                //       color: AppColors.LightGreen,
                                //       fontSize: 15,
                                //       fontFamily: "Poppins",
                                //     ),
                                //   ),
                                // ),
                                // Container(
                                //   height: 42,
                                //   width: 355,
                                //   padding: EdgeInsets.only(left: 20, right: 5),
                                //   alignment: Alignment.center,
                                //   decoration: BoxDecoration(
                                //     color: AppColors.LightGreen,
                                //     borderRadius: BorderRadius.circular(18),
                                //   ),
                                //   child: TextField(
                                //     // keyboardType: TextInputType.visiblePassword,
                                //     obscureText: _passObsecure,
                                //     style: TextStyle(
                                //         fontSize: 16,
                                //         color: AppColors.LettersAndIcons,
                                //         fontFamily: "Poppins"),
                                //     showCursor: false,
                                //     decoration: InputDecoration(
                                //       suffixIcon: GestureDetector(
                                //         onTap: () {
                                //           setState(() {
                                //             _passObsecure = !_passObsecure;
                                //           });
                                //         },
                                //         child: _passObsecure
                                //             ? Icon(
                                //                 Icons.remove_red_eye_outlined,
                                //                 color: AppColors.LettersAndIcons,
                                //               )
                                //             : Icon(
                                //                 Icons.visibility_off_outlined,
                                //                 color: AppColors.LettersAndIcons,
                                //               ),
                                //       ),
                                //       border: InputBorder.none,
                                //       hintText: "● ● ● ● ● ● ● ● ",
                                //       hintStyle: TextStyle(
                                //           color: Colors.black.withOpacity(0.45),
                                //           fontSize: 16,
                                //           fontFamily: "Poppins"),
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  LoginUser();
                                }
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
                                    "Log In",
                                    style: TextStyle(
                                        color: AppColors.LettersAndIcons,
                                        fontSize: 20,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextButton(
                                onPressed: () =>
                                    Get.offNamed(ForgotPasswordScreen.id),
                                child: Text(
                                  "Forgot Password?",
                                  style: GoogleFonts.leagueSpartan(
                                    color: AppColors.LightGreen,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.offNamed(RegisterScreen.id),
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
                                      color: AppColors
                                          .BackgroundDarkModeAndLetters,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(top: 15, bottom: 10),
                            //   child: Text(
                            //     "or sign up with",
                            //     style: GoogleFonts.leagueSpartan(
                            //       color: AppColors.LightGreen,
                            //       fontSize: 13,
                            //     ),
                            //   ),
                            // ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: [
                            //     Image.asset("assets/Ic_White_Google.png"),
                            //   ],
                            // ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Text.rich(
                                TextSpan(
                                  style: GoogleFonts.leagueSpartan(
                                    fontSize: 13,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Don't have an account? ",
                                      style: TextStyle(
                                          color: AppColors.LightGreen),
                                    ),
                                    TextSpan(
                                      text: "Sign Up ",
                                      style:
                                          TextStyle(color: AppColors.mainGreen),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () =>
                                            Get.offNamed(RegisterScreen.id),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField({
    required String label,
    required TextEditingController controller,
    required String hintText,
    TextInputType? keyboardType,
    List<TextInputFormatter>? inputFormatters,
    String? Function(String?)? validator,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12, bottom: 4),
          child: Text(
            label,
            style: TextStyle(
              color: AppColors.LightGreen,
              fontSize: 15,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        Container(
          height: 44,
          width: 355,
          child: TextFormField(
            enableInteractiveSelection: false,
            controller: controller,
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
            validator: validator,
            obscureText: obscureText,
            decoration: InputDecoration(
              errorStyle: TextStyle(height: 0.1,fontSize: 10,color: AppColors.LightGreen),
              errorMaxLines: 2,
              hintText: hintText,
              hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.45),
                  fontSize: 16,
                  fontFamily: "Poppins"),
              filled: true,
              fillColor: AppColors.LightGreen,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 22, vertical: 4),
              suffixIcon: suffixIcon,
            ),
            style: TextStyle(
                fontSize: 16,
                color: AppColors.LettersAndIcons,
                fontFamily: "Poppins"),
          ),
        ),
      ],
    );
  }
}
// Padding(
//   padding: const EdgeInsets.only(top: 15.0, bottom: 22),
//   child: Text.rich(
//     TextSpan(
//       style: TextStyle(
//         fontSize: 14,
//         fontFamily: "Poppins",
//       ),
//       children: [
//         TextSpan(
//           text: "Use ",
//           style: TextStyle(color: AppColors.LightGreen),
//         ),
//         TextSpan(
//           text: "Fingerprint ",
//           style: TextStyle(color: AppColors.mainGreen),
//         ),
//         TextSpan(
//           text: "To Access",
//           style: TextStyle(color: AppColors.LightGreen),
//         ),
//       ],
//     ),
//   ),
// ),
