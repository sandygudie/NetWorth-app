import 'dart:async';
import 'package:flutter/material.dart';
import 'package:networthapp/ui/Theme/appTheme.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashTimer();
  }

  splashTimer() async {
    var duration = Duration(seconds: 3);

    return new Timer(duration, () {});
  }

  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: appThemeData.splashColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('images/Logo.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'MyNetWorth',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Open Sans',
                  fontSize: 32,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
