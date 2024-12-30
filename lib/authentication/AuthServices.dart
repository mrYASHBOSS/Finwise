import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finwise/utility/constants/customAlertBox.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //Sign Up
  Future<String> ProcessData(
      String txtFullName,
      String txtEmail,
      String txtMoNumber,
      String txtDOB,
      String txtPassword,
      BuildContext context) async {
    String res = "Some Error Occurred";
    try {
      if (txtEmail == "" ||
          txtPassword == "" ||
          txtFullName == "" ||
          txtDOB == "" ||
          txtMoNumber == "") {
        customAlertBox(context, "Enter Required Field");
      } else {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: txtEmail, password: txtPassword);
        await _firestore.collection("users").doc(credential.user!.uid).set({
          'uid': credential.user!.uid,
          'name': txtFullName,
          'email': txtEmail,
          'dob': txtDOB,
          'mobileNumber': txtMoNumber,
        });
        res = "Registration Successfully";
      }
    } catch (e) {
      return e.toString();
    }
    return res;
  }

  //Log In
  Future<String> LoginUser({
    required String txtEmail,
    required String txtPassword,
  }) async {
    String res = "Some error Occurred";
    try {
      if (txtEmail.isNotEmpty || txtPassword.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: txtEmail, password: txtPassword);
        res = "Login Successfully";
      } else {
        res = "Please fill the all field";
      }
    } catch (e) {
      return e.toString();
    }
    return res;
  }

  //Log Out
Future<void> signOut() async {
    await _auth.signOut();
}
}
