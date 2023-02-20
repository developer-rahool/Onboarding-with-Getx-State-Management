// ignore_for_file: unused_import, avoid_web_libraries_in_flutter

import 'dart:async';
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen_app/views/Dashboard.dart';
import '../controller/controller.dart';
import 'onboard_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final OnboardingController _topage = OnboardingController();

  @override
  Widget build(BuildContext context) {
    _topage.splashfunc();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 280,
              width: 280,
              child: Image.asset("images/shopefood-logo.png"),
            ),
          ),
        ],
      ),
    );
  }
}
