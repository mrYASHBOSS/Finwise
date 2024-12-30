import 'package:finwise/utility/constants/AppColors.dart';
import 'package:flutter/material.dart';

customAlertBox(BuildContext context, String text) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.BackgroundDarkModeAndLetters,
          title: Text(
            "$text",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Poppies",
                fontSize: 18,
                color: AppColors.LightGreen,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Okay",
                style: TextStyle(color: AppColors.mainGreen, fontSize: 14),
              ),
            )
          ],
        );
      });
}
