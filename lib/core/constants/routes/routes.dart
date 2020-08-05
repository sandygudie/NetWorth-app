import 'package:flutter/material.dart';
import 'package:networthapp/ui/onboarding_screen.dart';
import 'package:networthapp/ui/splashscreen.dart';

class RouteNames {
  //Custom class that holds all the named routes as constants for easy reference
  static const String splashScreen = '/';
  static const String onboarding = 'onboarding';

  //Routes and their respective Pages.
  static Map<String, Widget Function(BuildContext)> routes = {
    RouteNames.splashScreen: (context) => SplashScreen(),
    RouteNames.onboarding: (context) => OnboardingScreen(),
  };
}
