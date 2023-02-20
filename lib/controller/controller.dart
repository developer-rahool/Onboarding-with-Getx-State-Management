// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen_app/views/Dashboard.dart';
import 'package:onboarding_screen_app/views/onboard_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/model.dart';
//import '../views/Dashboard.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;

  var pageController = PageController();
  bool get islastpage => selectedPageIndex.value == onboardingPages.length - 1;

  forwardAction() {
    pageController.nextPage(
        duration: 300.milliseconds, curve: Curves.easeInCirc);
  }

  start() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("show", true);
    Get.to(const Dashboard());
  }

  List<OnboardingModel> onboardingPages = [
    OnboardingModel('images/locationIcon1.png', 'Order Shipping',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non purus cursus.'),
    OnboardingModel('images/Delivery_man_scooter.png', 'Delivery Courier',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non purus cursus.'),
    OnboardingModel('images/man_packet.png', 'Safe Delivery',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non purus cursus.')
  ];

  splashfunc() {
    Timer(const Duration(seconds: 3), () {
      Get.to(Onboarding());
    });
  }
}
