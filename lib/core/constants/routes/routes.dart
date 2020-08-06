import 'package:flutter/material.dart';
import 'package:networthapp/ui/views/add_item_screen.dart';
import 'package:networthapp/ui/views/login_screen/login_screen.dart';
import 'package:networthapp/ui/views/onboarding_screen/onboarding_screen.dart';
import 'package:networthapp/ui/views/signup_screen/signup_screen.dart';
import 'package:networthapp/ui/views/splashscreen.dart';
import 'package:networthapp/ui/add_asset/add_asset_screen.dart';
import 'package:networthapp/ui/add_debt/add_debt_screen.dart';
import 'package:networthapp/ui/add_money/add_money_screen.dart';

class RouteNames {
  //Custom class that holds all the named routes as constants for easy reference
  static const String splashScreen = '/';
  static const String onboarding = 'onboarding';
  static const String addItemScreen = 'addItemScreen';
  static const String addMoneyScreen = 'addMoneyScreen';
  static const String addAssetScreen = 'addAssetScreen';
  static const String addDebtScreen = 'addDebtScreen';
  static const String signUpScreen = 'signUpScreen';
  static const String loginScreen = 'loginScreen';

  //Routes and their respective Pages.
  static Map<String, Widget Function(BuildContext)> routes = {
    RouteNames.splashScreen: (context) => SplashScreen(),
    RouteNames.onboarding: (context) => OnboardingScreen(),
    RouteNames.addItemScreen: (context) => AddItemScreen(),
    RouteNames.addMoneyScreen: (context) => AddMoneyScreen(),
    RouteNames.addAssetScreen: (context) => AddAssetScreen(),
    RouteNames.addDebtScreen: (context) => AddDebtScreen(),
    RouteNames.signUpScreen: (context) => SignUp(),
    RouteNames.loginScreen: (context) => LogIn(),
  };
}
