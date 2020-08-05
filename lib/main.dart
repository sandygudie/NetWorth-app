import 'package:flutter/material.dart';
import 'package:networthapp/core/constants/routes/route_generator.dart';
import 'package:networthapp/core/constants/routes/routes.dart';
import 'package:networthapp/core/providers/providers.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainApp();
//    return MultiProvider(
//      providers: providers,
//      child: MainApp(),
  }
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Networth',
      initialRoute: RouteNames.addItemScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
