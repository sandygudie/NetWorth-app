import 'package:flutter/cupertino.dart';
import 'package:networthapp/core/constants/routes/routes.dart';
import 'package:networthapp/ui/add_asset/add_asset_screen.dart';
import 'package:networthapp/ui/add_debt/add_debt_screen.dart';
import 'package:networthapp/ui/add_item_screen.dart';
import 'package:networthapp/ui/add_money/add_money_screen.dart';
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
      case RouteNames.addItemScreen:
        return CustomSlideTransition(child: AddItemScreen());
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
    }
  }
}
