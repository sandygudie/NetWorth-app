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
          ? Config.xMargin(context, 3.8)
          : Config.xMargin(context, 2.4),
      height: positionIndex == currentIndex
          ? Config.yMargin(context, 1.8)
          : Config.yMargin(context, 1.1),
      decoration: BoxDecoration(
          border: Border.all(
              color: positionIndex == currentIndex
                  ? appThemeData.buttonColor
                  : Theme.of(context).hintColor),
          color: positionIndex == currentIndex
              ? appThemeData.buttonColor
              : Theme.of(context).hintColor,
          borderRadius: BorderRadius.circular(Config.xMargin(context, 20))),
    );
  }
}
