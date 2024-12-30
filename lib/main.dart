import 'package:finwise/screens/CategoryScreen.dart';
import 'package:finwise/screens/GoalkeepingScreen.dart';
import 'package:finwise/screens/HomeScreen.dart';
import 'package:finwise/screens/Login_SignUp/ForgotPasswordScreen.dart';
import 'package:finwise/screens/Login_SignUp/loginScreen.dart';
import 'package:finwise/screens/Login_SignUp/RegistrationScreen.dart';
import 'package:finwise/screens/launch/SplashScreen.dart';
import 'package:finwise/screens/launch/launch_second.dart';
import 'package:finwise/screens/news_article.dart';
import 'package:finwise/screens/profile.dart';
import 'package:finwise/utility/model/trancs.dart';
import 'package:finwise/utility/theme/AppTheme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  await Hive.initFlutter();
  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox('transactions');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        launch_second.id: (context) => launch_second(),
        LoginScreen.id: (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        ForgotPasswordScreen.id: (context) => ForgotPasswordScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        News_Article.id: (context) => News_Article(),
        CategoryScreen.id: (context) => CategoryScreen(),
        GoalKeepingScreen.id: (context) => GoalKeepingScreen(),
      },
    );
  }
}

