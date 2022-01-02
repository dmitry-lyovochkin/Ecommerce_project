import 'package:ecommerce_project/application/ui/themes/app_theme.dart';
import 'package:ecommerce_project/custom_icons.dart';
import 'package:flutter/material.dart';

class MainTabsScreen extends StatelessWidget {
  const MainTabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container()
          ),
          BottomNavigationBar(
            currentIndex: 0,
            items: const [
              BottomNavigationBarItem(
                backgroundColor: AppColors.buttonBarColor,
                icon: Icon(CustomIcons.fiber_manual_record),
                label: "Explorer",
              ),
              BottomNavigationBarItem(
                icon: Icon(CustomIcons.brightness_1),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(CustomIcons.profile),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(CustomIcons.vector),
                label: "Home",
              ),
            ]
          )
        ],
      ),
    );
  }
}