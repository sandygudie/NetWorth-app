import 'package:flutter/material.dart';
import 'package:networthapp/ui/Theme/appTheme.dart';
import 'package:networthapp/ui/size_config/config.dart';

class Indicator extends StatelessWidget {
  final int positionIndex, currentIndex;
  Indicator({this.currentIndex, this.positionIndex});
  final Config config = Config();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: positionIndex == currentIndex
          ? Config.xMargin(context, 2.546)
          : Config.xMargin(context, 2.546),
      height: positionIndex == currentIndex
          ? Config.yMargin(context, 1.317)
          : Config.yMargin(context, 1.317),
      decoration: BoxDecoration(
          border: Border.all(
              color: positionIndex == currentIndex
                  ? appThemeData.buttonColor
                  : Color(0xFFE5E5E5)),
          color: positionIndex == currentIndex
              ? appThemeData.buttonColor
              : Color(0xFFE5E5E5),
          borderRadius: BorderRadius.circular(Config.xMargin(context, 20))),
    );
  }
}
