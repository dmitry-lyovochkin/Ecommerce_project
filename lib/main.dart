import 'package:ecommerce_project/application/ui/screens/Button_nav_bar/main_tabs_screen.dart';
import 'package:ecommerce_project/application/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      home: const BottomNavBarWidget(),
      // initialRoute: '/first',
      // routes: {
      //   '/first': (context) => const CategoryWidget(),
      //   '/second': (context) => const ProductDetailsWidget(),
      // },
    );
  }
}
