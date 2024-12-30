import 'package:finwise/authentication/AuthServices.dart';
import 'package:finwise/screens/Login_SignUp/loginScreen.dart';
import 'package:finwise/utility/constants/AppColors.dart';
import 'package:finwise/utility/constants/customAlertBox.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = "register-screen";

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool obscurePassword = true;
  bool obscureConfirmPassword = true;
  bool isLoading = false;

  void signUpUser() async {
    String res = await AuthServices().ProcessData(
        fullNameController.text.toString().trim(),
        emailController.text.toString().trim(),
        mobileNumberController.text.toString().trim(),
        dateOfBirthController.text.toString().trim(),
        passwordController.text.toString().trim(),
        context);
    if (res == "Registration Successfully") {
      setState(() {
        isLoading = true;
      });
      Get.offNamed(LoginScreen.id);
    }
    else {
      setState(() {
        isLoading = false;
      });

      customAlertBox(context, res);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    fullNameController.dispose();
    emailController.dispose();
    mobileNumberController.dispose();
    dateOfBirthController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BackgroundDarkModeAndLetters,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Text(
              'Create Account',
              style: TextStyle(
                color: AppColors.LightGreen,
                fontSize: 30,
                fontFamily: "Poppins",
              ),
            ),
            SizedBox(height: 50),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.LettersAndIcons,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildTextFormField(
                          hintText: "example@example.com",
                          label: 'Full name',
                          controller: fullNameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your full name';
                            }
                            return null;
                          },
                        ), //Full Name
                        SizedBox(height: 16),
                        buildTextFormField(
                          hintText: "example@example.com",
                          label: 'Email',
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                .hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                        ), //Email
                        SizedBox(height: 16),
                        buildTextFormField(
                          hintText: "+91 12345 12345",
                          label: 'Mobile Number',
                          controller: mobileNumberController,
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your mobile number';
                            }
                            if (value.length < 10) {
                              return 'Please enter a valid mobile number';
                            }
                            return null;
                          },
                        ), //Mobile Number
                        SizedBox(height: 16),
                        buildTextFormField(
                          hintText: "DD / MM / YYYY",
                          label: 'Date of birth',
                          controller: dateOfBirthController,
                          keyboardType: TextInputType.datetime,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your date of birth';
                            }
                            // Add more sophisticated date validation if needed
                            return null;
                          },
                        ), //Date of Birth
                        SizedBox(height: 16),
                        buildTextFormField(
                          hintText: "● ● ● ● ● ● ● ● ",
                          label: 'Password',
                          controller: passwordController,
                          obscureText: obscurePassword,
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
                            icon: Icon(obscurePassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined),
                            onPressed: () {
                              setState(() {
                                obscurePassword = !obscurePassword;
                              });
                            },
                          ),
                        ), //Password
                        SizedBox(height: 16),
                        buildTextFormField(
                          hintText: "● ● ● ● ● ● ● ● ",
                          label: 'Confirm Password',
                          controller: confirmPasswordController,
                          obscureText: obscureConfirmPassword,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please confirm your password';
                            }
                            if (value != passwordController.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                          suffixIcon: IconButton(
                            icon: Icon(obscureConfirmPassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined),
                            onPressed: () {
                              setState(() {
                                obscureConfirmPassword =
                                    !obscureConfirmPassword;
                              });
                            },
                          ),
                        ), //Confirm Password
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              "   By continuing, you agree to\nTerms of Use and Privacy Policy.",
                              style: GoogleFonts.leagueSpartan(
                                color: AppColors.LightGreen,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ), //Terms & Condition
                        Center(
                          child: Container(
                            height: 45,
                            width: 207,
                            child: ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) { signUpUser(); }
                              },
                              child: Text(
                                'Sign Up',
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
                                  fontFamily: "Poppins",
                                  color: AppColors.LettersAndIcons,
                                ),
                              ),
                            ),
                          ),
                        ), //Sign Up Button
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: RichText(
                              text: TextSpan(
                                text: 'Already have an account? ',
                                style: GoogleFonts.leagueSpartan(
                                  color: AppColors.LightGreen,
                                  fontSize: 13,
                                ),
                                children: [
                                  TextSpan(
                                    text: ' Log In',
                                    style: GoogleFonts.leagueSpartan(
                                        color: AppColors.mainGreen),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap =
                                          () => Get.offNamed(LoginScreen.id),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Log in TextButton
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

  Widget buildTextFormField({
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
            cursorColor: AppColors.LettersAndIcons,
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

// import 'package:finwise/utility/constants//AppColors.dart';
// import 'package:flutter/material.dart';
// import 'package:googlefonts/googlefonts.dart';
//
// class RegisterScreen extends StatefulWidget {
//   static const String id = "register-screen";
//
//   const RegisterScreen({super.key});
//
//   @override
//   State<RegisterScreen> createState() => RegisterScreenState();
// }
//
// class RegisterScreenState extends State<RegisterScreen> {
//   bool passObsecure = true;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: AppColors.BackgroundDarkModeAndLetters,
//         body: Container(
//           width: double.infinity,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(top:60,left: 60,right: 60,bottom: 50),
//                 child: Text(
//                   "Create Account",
//                   style: TextStyle(
//                     color: AppColors.LightGreen,
//                     fontSize: 30,
//                     fontFamily: "Poppins",
//                   ),
//                 ),
//               ), //Welcome
//               Expanded(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: AppColors.LettersAndIcons,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(60),
//                       topRight: Radius.circular(60),
//                     ),
//                   ),
//                   child: SingleChildScrollView(
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 30, right: 30),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Text(
//                                   "Full Name",
//                                   style: TextStyle(
//                                     color: AppColors.LightGreen,
//                                     fontSize: 15,
//                                     fontFamily: "Poppins",
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 height: 40,
//                                 width: 355,
//                                 padding: EdgeInsets.only(left: 20),
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                   color: AppColors.LightGreen,
//                                   borderRadius: BorderRadius.circular(18),
//                                 ),
//                                 child: TextField(
//                                   textAlign: TextAlign.start,
//                                   style: TextStyle(
//                                       fontSize: 16,
//                                       color: AppColors.LettersAndIcons,
//                                       fontFamily: "Poppins"),
//                                   // cursorColor:
//                                   //     AppColors.LettersAndIcons,
//                                   showCursor: false,
//                                   keyboardType: TextInputType.name,
//                                   decoration: InputDecoration(
//                                     border: InputBorder.none,
//                                     hintText: "Your Full Name",
//                                     hintStyle: TextStyle(
//                                         fontSize: 16,
//                                         color: AppColors.LiteDarkModeGreenBar,
//                                         fontFamily: "Poppins"),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Text(
//                                   "Email",
//                                   style: TextStyle(
//                                     color: AppColors.LightGreen,
//                                     fontSize: 15,
//                                     fontFamily: "Poppins",
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 height: 40,
//                                 width: 355,
//                                 padding: EdgeInsets.only(left: 20),
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                   color: AppColors.LightGreen,
//                                   borderRadius: BorderRadius.circular(18),
//                                 ),
//                                 child: TextField(
//                                   textAlign: TextAlign.start,
//                                   style: TextStyle(
//                                       fontSize: 16,
//                                       color: AppColors.LettersAndIcons,
//                                       fontFamily: "Poppins"),
//                                   // cursorColor:
//                                   //     AppColors.LettersAndIcons,
//                                   showCursor: false,
//                                   keyboardType: TextInputType.emailAddress,
//                                   decoration: InputDecoration(
//                                     border: InputBorder.none,
//                                     hintText: "example@example.com",
//                                     hintStyle: TextStyle(
//                                         fontSize: 16,
//                                         color: AppColors.LiteDarkModeGreenBar,
//                                         fontFamily: "Poppins"),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Text(
//                                   "Mobile Number",
//                                   style: TextStyle(
//                                     color: AppColors.LightGreen,
//                                     fontSize: 15,
//                                     fontFamily: "Poppins",
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 height: 40,
//                                 width: 355,
//                                 padding: EdgeInsets.only(left: 20),
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                   color: AppColors.LightGreen,
//                                   borderRadius: BorderRadius.circular(18),
//                                 ),
//                                 child: TextField(
//                                   textAlign: TextAlign.start,
//                                   style: TextStyle(
//                                       fontSize: 16,
//                                       color: AppColors.LettersAndIcons,
//                                       fontFamily: "Poppins"),
//                                   // cursorColor:
//                                   //     AppColors.LettersAndIcons,
//                                   showCursor: false,
//                                   keyboardType: TextInputType.number,
//                                   decoration: InputDecoration(
//                                     border: InputBorder.none,
//                                     hintText: "+91 12345 12345",
//                                     hintStyle: TextStyle(
//                                         fontSize: 16,
//                                         color: AppColors.LiteDarkModeGreenBar,
//                                         fontFamily: "Poppins"),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Text(
//                                   "Date Of Birth",
//                                   style: TextStyle(
//                                     color: AppColors.LightGreen,
//                                     fontSize: 15,
//                                     fontFamily: "Poppins",
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 height: 40,
//                                 width: 355,
//                                 padding: EdgeInsets.only(left: 20),
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                   color: AppColors.LightGreen,
//                                   borderRadius: BorderRadius.circular(18),
//                                 ),
//                                 child: TextField(
//                                   textAlign: TextAlign.start,
//                                   style: TextStyle(
//                                       fontSize: 16,
//                                       color: AppColors.LettersAndIcons,
//                                       fontFamily: "Poppins"),
//                                   // cursorColor:
//                                   //     AppColors.LettersAndIcons,
//                                   showCursor: false,
//                                   keyboardType: TextInputType.datetime,
//                                   decoration: InputDecoration(
//                                     border: InputBorder.none,
//                                     hintText: "DD/MM/YYYY",
//                                     hintStyle: TextStyle(
//                                         fontSize: 16,
//                                         color: AppColors.LiteDarkModeGreenBar,
//                                         fontFamily: "Poppins"),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(bottom: 8.0,top: 10,left: 8 ,right: 8),
//                                 child: Text(
//                                   "Password",
//                                   style: TextStyle(
//                                     color: AppColors.LightGreen,
//                                     fontSize: 15,
//                                     fontFamily: "Poppins",
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 height: 40,
//                                 width: 355,
//                                 padding: EdgeInsets.only(left: 20,right: 5),
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                   color: AppColors.LightGreen,
//                                   borderRadius: BorderRadius.circular(18),
//                                 ),
//                                 child: TextField(
//                                   // keyboardType: TextInputType.visiblePassword,
//                                   obscureText: passObsecure,
//                                   style: TextStyle(
//                                       fontSize: 16,
//                                       color: AppColors.LettersAndIcons,
//                                       fontFamily: "Poppins"),
//                                   showCursor: false,
//                                   decoration: InputDecoration(
//                                     suffixIcon:GestureDetector(
//                                       onTap: () {
//                                         setState(() {
//                                           passObsecure = !passObsecure;
//                                         });
//                                       },
//                                       child: passObsecure
//                                           ? Icon(Icons.key,color: AppColors.LettersAndIcons,)
//                                           : Icon(Icons.keyoff,color: AppColors.LettersAndIcons,),
//                                     ),
//                                     border: InputBorder.none,
//                                     hintText: "●●●●●●●●",
//                                     hintStyle: TextStyle(
//                                         fontSize: 16,
//                                         color: AppColors.LiteDarkModeGreenBar,
//                                         fontFamily: "Poppins"),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(bottom: 8.0,top: 10,left: 8 ,right: 8),
//                                 child: Text(
//                                   "Confirm Password",
//                                   style: TextStyle(
//                                     color: AppColors.LightGreen,
//                                     fontSize: 15,
//                                     fontFamily: "Poppins",
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 height: 40,
//                                 width: 355,
//                                 padding: EdgeInsets.only(left: 20,right: 5),
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                   color: AppColors.LightGreen,
//                                   borderRadius: BorderRadius.circular(18),
//                                 ),
//                                 child: TextField(
//                                   // keyboardType: TextInputType.visiblePassword,
//                                   obscureText: passObsecure,
//                                   style: TextStyle(
//                                       fontSize: 16,
//                                       color: AppColors.LettersAndIcons,
//                                       fontFamily: "Poppins"),
//                                   showCursor: false,
//                                   decoration: InputDecoration(
//                                     suffixIcon:GestureDetector(
//                                       onTap: () {
//                                         setState(() {
//                                           passObsecure = !passObsecure;
//                                         });
//                                       },
//                                       child: passObsecure
//                                           ? Icon(Icons.key,color: AppColors.LettersAndIcons,)
//                                           : Icon(Icons.keyoff,color: AppColors.LettersAndIcons,),
//                                     ),
//                                     border: InputBorder.none,
//                                     hintText: "●●●●●●●●",
//                                     hintStyle: TextStyle(
//                                         fontSize: 16,
//                                         color: AppColors.LiteDarkModeGreenBar,
//                                         fontFamily: "Poppins"),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           // SizedBox(
//                           //   height: 60,
//                           // ),
//                           Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Text(
//                               "   By continuing, you agree to\nTerms of Use and Privacy Policy.",
//                               style: GoogleFonts.leagueSpartan(
//                                 color: AppColors.LightGreen,
//                                 fontSize: 12,
//                               ),
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {},
//                             child: Container(
//                               height: 45,
//                               width: 207,
//                               decoration: BoxDecoration(
//                                 color: AppColors.mainGreen,
//                                 borderRadius: BorderRadius.circular(50),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   "Sign Up",
//                                   style: TextStyle(
//                                       color: AppColors.LettersAndIcons,
//                                       fontSize: 20,
//                                       fontFamily: "Poppins",
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 10.0),
//                             child: Text.rich(
//                               TextSpan(
//                                 style: GoogleFonts.leagueSpartan(
//                                   fontSize: 13,
//                                 ),
//                                 children: [
//                                   TextSpan(
//                                     text: "Already have an account? ",
//                                     style: TextStyle(color: AppColors.LightGreen),
//                                   ),
//                                   TextSpan(
//                                     text: "Log In ",
//                                     style: TextStyle(color: AppColors.mainGreen),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
