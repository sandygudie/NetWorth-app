import 'package:flutter/material.dart';
import 'package:networthapp/ui/Theme/appTheme.dart';
import 'package:networthapp/ui/size_config/config.dart';

class AllChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          Config.yMargin(context, 13.04),
        ),
        child: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              'Charts',
              style: TextStyle(fontFamily: 'Open Sans'),
            ),
          ),
          backgroundColor: appThemeData.primaryColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: ListView(
            children: <Widget>[
              Image.asset(
                'images/Frame1.png',
              ),
              Image.asset('images/Frame2.png'),
              Image.asset('images/Frame3.png'),
            ],
          ),
        ),
      ),
    );
  }
}
