import 'package:finwise/utility/constants/AppColors.dart';
import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    colorScheme: ColorScheme.light(surface: AppColors.LiteDarkModeGreenBar )


  );
  static ThemeData darkTheme = ThemeData(
    fontFamily: "Poppins",
    useMaterial3: true,
  );
}