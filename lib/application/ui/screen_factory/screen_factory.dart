import 'package:ecommerce_project/application/ui/screens/home_screen/Button_nav_bar/main_tabs_screen.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Button_nav_bar/main_tabs_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenFactory {
  Widget makeMainTabs() => ChangeNotifierProvider(
    create: (_) => MainTabsViewModel(), 
      child: const MainTabsScreen());
}