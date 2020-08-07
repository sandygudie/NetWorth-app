import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:networthapp/ui/Theme/appTheme.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return DefaultTabController(
      // initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: appThemeData.primaryColor,
          title: Text(
            'Portfolio',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Column(// Column
            children: <Widget>[
          Container(
            color: appThemeData.backgroundColor, // Tab Bar color change
            child: TabBar(
              //isScrollable: true,
              // TabBar
              //controller: tabController,
              unselectedLabelColor: Colors.black54,
              labelColor: appThemeData.primaryColor,
              indicatorWeight: 2,
              indicatorColor: appThemeData.primaryColor,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "Money",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Assets",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Debts",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Stack(children: [
              TabBarView(
                children: <Widget>[
                  moneyView(),
                  assetsView(),
                  debtsView(),
                ],
              ),
              Positioned(
                right: 20.0.w,
                bottom: 30.h,
                child: FloatingActionButton(
                  backgroundColor: appThemeData.primaryColor,
                  child: Icon(Icons.add),
                  onPressed: () {},
                ),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}

class ColoredTabBar extends Container implements PreferredSizeWidget {
  ColoredTabBar(this.color, this.tabBar, this.height);

  final Color color;
  final TabBar tabBar;
  final double height;

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) => Container(
        color: color,
        child: tabBar,
        height: height,
      );
}

Widget moneyView() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        ListTile(
          title: Text('Savings'),
          subtitle: Text('Personal Savings'),
          trailing: Text(
            '\$1,164,800',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Divider(),
        ListTile(
          title: Text('Cash at Bank'),
          subtitle: Text('GtBank'),
          trailing: Text(
            '\$164,800',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    ),
  );
}

Widget assetsView() {
  return SingleChildScrollView(
    physics: BouncingScrollPhysics(),
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Fixed Assets',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Value')
            ],
          ),
        ),
        ListTile(
          leading: Container(
            height: 60.h,
            width: 60.h,
            decoration: BoxDecoration(
                color: Color(0xffFFF3E1),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/estate.png'),
                )),
          ),
          title: Text(
            'Home(Ikeja)',
          ),
          trailing: Text(
            '\$1,164,800',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Divider(),
        ListTile(
          leading: Container(
            height: 60.h,
            width: 60.h,
            decoration: BoxDecoration(
                color: Color(0xffFFF3E1),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/estate.png'),
                )),
          ),
          title: Text(
            'Company',
          ),
          trailing: Text(
            '\$1,164,800',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Divider(),
        ListTile(
          leading: Container(
            height: 60.h,
            width: 60.h,
            decoration: BoxDecoration(
                color: Color(0xffFFF3E1),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/estate.png'),
                )),
          ),
          title: Text(
            'Toyota',
          ),
          trailing: Text(
            '\$1,164,800',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: 40.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Movable Assets',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Value')
            ],
          ),
        ),
        ListTile(
          leading: Container(
            height: 60.h,
            width: 60.h,
            decoration: BoxDecoration(
                color: Color(0xffFFF3E1),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/estate.png'),
                )),
          ),
          title: Text(
            'Bitcoin',
          ),
          trailing: Text(
            '\$1,164,800',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Divider(),
        ListTile(
          leading: Container(
            height: 60.h,
            width: 60.h,
            decoration: BoxDecoration(
                color: Color(0xffFFF3E1),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/estate.png'),
                )),
          ),
          title: Text(
            'Tesla Stock',
          ),
          trailing: Text(
            '\$1,164,800',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    ),
  );
}

Widget debtsView() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Debts',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Value')
            ],
          ),
        ),
        ListTile(
          leading: Container(
            height: 60.h,
            width: 60.h,
            decoration: BoxDecoration(
                color: Color(0xffEAEBFA),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/mortgage.png'),
                )),
          ),
          title: Text(
            'Mortagage',
          ),
          trailing: Text(
            '\$1,164,800',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    ),
  );
}
