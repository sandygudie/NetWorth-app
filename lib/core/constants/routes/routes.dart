import 'package:flutter/material.dart';
import 'package:networthapp/ui/navigation/page_navigation/tabs_page.dart';
import 'package:networthapp/ui/views/add_asset/add_asset_screen.dart';
import 'package:networthapp/ui/views/add_debt/add_debt_screen.dart';
import 'package:networthapp/ui/views/add_item_screen.dart';
import 'package:networthapp/ui/views/add_money/add_money_screen.dart';
import 'package:networthapp/ui/views/home_screen/home_screen.dart';
import 'package:networthapp/ui/views/login_screen/login_screen.dart';
import 'package:networthapp/ui/views/onboarding_screen/onboarding_screen.dart';
import 'package:networthapp/ui/views/portfolio_screen/portfolio_screen.dart';
import 'package:networthapp/ui/views/progress_screen/progress_screen.dart';
import 'package:networthapp/ui/views/settings/notifications_screen.dart';
import 'package:networthapp/ui/views/settings/settings_screen.dart';
import 'package:networthapp/ui/views/signup_screen/signup_screen.dart';
import 'package:networthapp/ui/views/splashscreen.dart';

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
  static const String homeScreen = 'homeScreen';
  static const String portfolioScreen = 'portfolioScreen';
  static const String tabsView = 'tabsView';
  static const String progressScreen = 'progressScreen';
  static const String settingsScreen = 'settingsScreen';
  static const String notificationsScreen = 'notificationsScreen';

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
    RouteNames.homeScreen: (context) => HomeScreen(),
    RouteNames.portfolioScreen: (context) => PortfolioScreen(),
    RouteNames.tabsView: (context) => TabsPage(),
    RouteNames.progressScreen: (context) => ProgressScreen(),
    RouteNames.settingsScreen: (context) => SettingsScreen(),
    RouteNames.notificationsScreen: (context) => NotificationsScreen(),
  };
}
