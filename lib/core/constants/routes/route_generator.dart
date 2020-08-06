import 'package:flutter/cupertino.dart';
import 'package:networthapp/core/constants/routes/routes.dart';
import 'package:networthapp/ui/navigation/page_transition.dart';

import 'package:networthapp/ui/views/add_item_screen.dart';
import 'package:networthapp/ui/views/login_screen/login_screen.dart';
import 'package:networthapp/ui/views/onboarding_screen/onboarding_screen.dart';
import 'package:networthapp/ui/views/signup_screen/signup_screen.dart';
import 'package:networthapp/ui/views/splashscreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return CustomSlideTransition(child: SplashScreen());
        break;
      case RouteNames.onboarding:
        return CustomSlideTransition(child: OnboardingScreen());
        break;
      case RouteNames.addItemScreen:
        return CustomSlideTransition(child: AddItemScreen());
        break;
      case RouteNames.signUpScreen:
        return CustomSlideTransition(child: SignUp());
        break;
      case RouteNames.loginScreen:
        return CustomSlideTransition(child: LogIn());
        break;
    }
  }
}
