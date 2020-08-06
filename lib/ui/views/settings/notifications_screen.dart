import 'package:flutter/material.dart';
import 'package:networthapp/ui/Theme/appTheme.dart';
import 'package:networthapp/ui/size_config/config.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool switcher = false;

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
              'Notifications',
              style: TextStyle(fontFamily: 'Open Sans'),
            ),
          ),
          backgroundColor: appThemeData.primaryColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: Config.yMargin(context, 3.5),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  switcher = !switcher;
                });
              },
              title: Text(
                'Turn On/Off All Notifications',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: Config.textSize(context, 4.58),
                ),
              ),
              trailing: Switch(
                  activeColor: appThemeData.primaryColor,
                  activeTrackColor: Color(0xFFA9A9E9),
                  onChanged: (value) {
                    setState(() {
                      switcher = value;
                    });
                  },
                  value: switcher),
            ),
            SizedBox(
              height: Config.yMargin(context, 3.19),
            ),
            ListTile(
              title: Text(
                'Notify me of my progress',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: Config.textSize(context, 4.58),
                ),
              ),
              subtitle: Text('As soon as I\'m inactive'),
              onTap: () {},
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(),
            ),
            ListTile(
              title: Text(
                'System Options',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: Config.textSize(context, 4.58),
                ),
              ),
              subtitle: Text('Choose sounds and vibration'),
              onTap: () {},
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }
}
