import 'package:ecommerce_project/application/ui/navigation/main_navigation.dart';
import 'package:ecommerce_project/application/ui/themes/app_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final mainNavigation = MainNavigation();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      routes: mainNavigation.routes,
    );
  }
}
