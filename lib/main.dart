import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen_app/views/Dashboard.dart';
import 'package:onboarding_screen_app/views/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  final prefs = await SharedPreferences.getInstance();
  final showhome = prefs.getBool("show") ?? false;
  runApp(MyApp(showhome: showhome));
}

class MyApp extends StatelessWidget {
  final bool showhome;

  const MyApp({super.key, required this.showhome});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'On Boarding',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: showhome ? const Dashboard() : SplashScreen(),
    );
  }
}
