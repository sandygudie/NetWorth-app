import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:networthapp/ui/Theme/appTheme.dart';
import 'package:networthapp/ui/views/home_screen/home_screen.dart';
import 'package:networthapp/ui/views/portfolio_screen/portfolio_screen.dart';
import 'package:networthapp/ui/views/progress_screen/progress_screen.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;
  final Image image;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    this.icon,
    this.image,
  });

  static List<TabNavigationItem> get items => [
        // Put your screen here using the format below
        TabNavigationItem(
          page: HomeScreen(),
          icon: Icon(Icons.home),
          title: Text(
            "Home",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        TabNavigationItem(
          page: PortfolioScreen(),
          icon: Icon(Icons.credit_card),
          title: Text(
            "Portfolio",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ),
        TabNavigationItem(
          page: ProgressScreen(),
          icon: Icon(Icons.loyalty),
          title: Text(
            "Progress",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ),
      ];
}
