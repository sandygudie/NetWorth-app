import 'package:flutter/material.dart';
import 'package:networthapp/ui/Theme/appTheme.dart';
import 'package:networthapp/ui/size_config/config.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          Config.yMargin(context, 13.04),
        ),
        child: AppBar(
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              'Settings',
              style: TextStyle(fontFamily: 'Open Sans'),
            ),
          ),
          backgroundColor: appThemeData.primaryColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: Config.yMargin(context, 1.27),
              ),
              child: ListTile(
                leading: Image.asset('images/account.png'),
                title: Text('Account'),
                onTap: () {},
              ),
            ),
            SizedBox(
              height: Config.yMargin(context, 2.19),
            ),
            ListTile(
              leading: Image.asset('images/notifications.png'),
              title: Text('Notifications'),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: Config.xMargin(context, 4),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: Config.yMargin(context, 2.19),
            ),
            ListTile(
              leading: Image.asset('images/currency.png'),
              title: Text('Currency'),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: Config.xMargin(context, 4),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: Config.yMargin(context, 2.19),
            ),
            ListTile(
              leading: Image.asset('images/help.png'),
              title: Text('Help'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
