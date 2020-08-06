import 'package:flutter/cupertino.dart';
import 'package:networthapp/core/constants/routes/routes.dart';
import 'package:networthapp/ui/navigation/page_navigation/tabs_page.dart';

import 'package:networthapp/ui/navigation/page_transition.dart';
import 'package:networthapp/ui/views/add_asset/add_asset_screen.dart';
import 'package:networthapp/ui/views/add_debt/add_debt_screen.dart';

import 'package:networthapp/ui/views/add_item_screen.dart';
import 'package:networthapp/ui/views/add_money/add_money_screen.dart';
import 'package:networthapp/ui/views/home_screen/home_screen.dart';
import 'package:networthapp/ui/views/login_screen/login_screen.dart';
import 'package:networthapp/ui/views/onboarding_screen/onboarding_screen.dart';
import 'package:networthapp/ui/views/portfolio_screen/portfolio_screen.dart';
import 'package:networthapp/ui/views/progress_screen/progress_screen.dart';
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
      case RouteNames.addMoneyScreen:
        return CustomSlideTransition(child: AddMoneyScreen());
        break;
      case RouteNames.addAssetScreen:
        return CustomSlideTransition(child: AddAssetScreen());
        break;
      case RouteNames.addDebtScreen:
        return CustomSlideTransition(child: AddDebtScreen());
        break;
      case RouteNames.homeScreen:
        return CustomSlideTransition(child: HomeScreen());
        break;
      case RouteNames.portfolioScreen:
        return CustomSlideTransition(child: PortfolioScreen());
        break;
      case RouteNames.tabsView:
        return CustomSlideTransition(child: TabsPage());
        break;
      case RouteNames.progressScreen:
        return CustomSlideTransition(child: ProgressScreen());
        break;
    }
  }
}
