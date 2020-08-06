import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:networthapp/ui/Theme/appTheme.dart';
import 'package:networthapp/ui/size_config/config.dart';

class AddItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Expanded(
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                padding: EdgeInsets.only(
                  top: Config.yMargin(context, 7.72),
                ),
                icon: Icon(Icons.close),
                onPressed: () {},
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: <Widget>[
                  Text(
                    'Add Item',
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: Config.textSize(context, 6.11),
                        fontWeight: FontWeight.w600,
                        color: appThemeData.primaryColor),
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 2.03),
                  ),
                  Text(
                    'What type of item do you \nwant to add to your portfolio?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: Config.textSize(context, 4.58),
                        color: appThemeData.primaryColorDark.withOpacity(0.6)),
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 6.96),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(
                        left: Config.textSize(context, 36),
                      ),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0xFFEAEBFA),
                            child: Image.asset('images/Money.png'),
                          ),
                          SizedBox(
                            width: Config.xMargin(
                              context,
                              2.03,
                            ),
                          ),
                          Text(
                            'Money',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: Config.textSize(context, 4.58),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 6.09),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(
                        left: Config.textSize(context, 36),
                      ),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0xFFE7F6E),
                            child: Image.asset('images/asset.png'),
                          ),
                          SizedBox(
                            width: Config.xMargin(
                              context,
                              2.03,
                            ),
                          ),
                          Text(
                            'Assets',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: Config.textSize(context, 4.58),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 6.07),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(
                        left: Config.textSize(context, 36),
                      ),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0xFFFFEAEC),
                            child: Image.asset('images/debt.png'),
                          ),
                          SizedBox(
                            width: Config.xMargin(
                              context,
                              2.03,
                            ),
                          ),
                          Text(
                            'Debts',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: Config.textSize(context, 4.58),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
