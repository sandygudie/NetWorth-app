import 'package:flutter/cupertino.dart';
import 'package:networthapp/core/constants/routes/routes.dart';
import 'package:networthapp/ui/navigation/page_transition.dart';
import 'package:networthapp/ui/onboarding_screen.dart';
import 'package:networthapp/ui/splashscreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return CustomSlideTransition(child: SplashScreen());
        break;
      case RouteNames.onboarding:
        return CustomSlideTransition(child: OnboardingScreen());
        break;
    }
  }
}
