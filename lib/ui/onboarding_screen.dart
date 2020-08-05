import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:networthapp/ui/Theme/appTheme.dart';
import 'package:networthapp/ui/dot_indicator.dart';
import 'package:networthapp/ui/navigation/page_transition.dart';
import 'package:networthapp/ui/size_config/config.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller;
  int currentIndex = 0;

  @override
  void initState() {
    _controller = PageController(
      initialPage: 0,
      keepPage: false,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appThemeData.backgroundColor,
      appBar: currentIndex != 0
          ? AppBar(
              backgroundColor: appThemeData.backgroundColor,
              elevation: 0,
              leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xFF1A1A1A),
                  ),
                  onPressed: () {}),
            )
          : AppBar(
              backgroundColor: appThemeData.backgroundColor,
              elevation: 0,
            ),
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: <Widget>[
            Container(
              height: height * .6,
              width: width,
              child: PageView(
                onPageChanged: onChangedFunction,
                controller: _controller,
                children: <Widget>[
                  ScreenWidget(
                    image: 'images/EasyFinance.png',
                    title: 'Easy Tracking',
                    description:
                        'You can easily keep track of your \nnetworth with statistical views',
                  ),
                  ScreenWidget(
                    image: 'images/manageholdings.png',
                    title: 'Manage your holdings',
                    description:
                        'You can manage your assets and keep \nyour debt from accumulating \nunnecessarily',
                  ),
                  ScreenWidget(
                    image: 'images/Winners-pana.png',
                    title: 'Progress with reward',
                    description:
                        'Keep track of your progress and as \nyou advance, you get rewarded with \nhigher wealth status',
                  )
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Indicator(
                  positionIndex: 0,
                  currentIndex: currentIndex,
                ),
                SizedBox(
                  width: Config.xMargin(context, 2.63),
                ),
                Indicator(
                  positionIndex: 1,
                  currentIndex: currentIndex,
                ),
                SizedBox(
                  width: Config.xMargin(context, 2.63),
                ),
                Indicator(
                  positionIndex: 2,
                  currentIndex: currentIndex,
                ),
              ],
            ),
            SizedBox(
              height: 48,
            ),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: Config.xMargin(context, 4)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: Config.yMargin(context, 5.5),
                    child: FlatButton(
                      color: appThemeData.buttonColor,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(width * 0.01),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: appThemeData.primaryColorLight,
                            fontFamily: 'Open Sans',
                            fontSize: Config.textSize(context, 4.375),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 1.7),
                  ),
                  Container(
                    height: Config.yMargin(context, 5.5),
                    decoration: BoxDecoration(
                      border: Border.all(color: appThemeData.buttonColor),
                      borderRadius: BorderRadius.circular(width * 0.01),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: appThemeData.buttonColor,
                            fontFamily: 'Open Sans',
                            fontSize: Config.textSize(context, 4.375),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),

//            Container(
//              margin: EdgeInsets.only(top: Config.yMargin(context, 4.5)),
//              height: Config.yMargin(context, 6),
//              width: Config.xMargin(context, 40),
//              alignment: Alignment.center,
//              decoration: BoxDecoration(
////                  color: Theme.of(context).primaryColor,
////                  border: Border.all(color: Theme.of(context).primaryColor),
//                  borderRadius:
//                      BorderRadius.circular(Config.xMargin(context, 2.77))),
//              child: Column(
//                children: <Widget>[
//                  FlatButton(
//                    onPressed: () {
//                      currentIndex == 2
//                          ? Navigator.pushReplacementNamed(context, 'signup')
//                          : _controller.animateToPage(++currentIndex,
//                              duration: Duration(milliseconds: 150),
//                              curve: Curves.easeInOutQuad);
//                    },
//                    splashColor: Theme.of(context).primaryColor,
//                    child: Text(
//                      currentIndex == 2 ? 'Get started' : "Next",
//                      style: TextStyle(
//                          fontSize: Config.textSize(context, 3.85),
//                          color: Theme.of(context).primaryColorLight,
//                          fontWeight: FontWeight.bold),
//                    ),
//                  ),
//                  FlatButton(onPressed: () {}, child: Text('Sign Up'))
//                ],
//              ),
//            ),
          ],
        ),
      ),
    );
  }

  onChangedFunction(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}

class ScreenWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  ScreenWidget({this.image, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appThemeData.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Config.xMargin(context, 6),
        ),
//            vertical: Config.yMargin(context, 5)),
        child: Container(
          height: height * .57,
          width: width,
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Container(
                height: height * .42,
                width: width,
                decoration: BoxDecoration(
//                    color: Theme.of(context).backgroundColor,
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.contain)),
              ),
              Container(
//                color: Theme.of(context).backgroundColor,
                child: ForwardAnimation(
                  milliseconds: 500,
                  child: Column(
                    children: <Widget>[
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: Config.textSize(context, 5.8),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(description,
                          textAlign: TextAlign.center,
                          style: TextStyle(
//                              color: Theme.of(context).primaryColorDark,
                              fontFamily: 'Open Sans',
                              fontSize: Config.textSize(context, 4.3),
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
