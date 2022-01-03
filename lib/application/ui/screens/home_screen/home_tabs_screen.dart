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
          Expanded(child: Container()),
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: SizedBox(
              height: 72,
              child: BottomNavigationBar(
                currentIndex: 0,
                items: const [
                  BottomNavigationBarItem(
                    backgroundColor: AppColors.buttonBarColor,
                    icon: Icon(CustomIcons.brightness_1, size: 8),
                    label: " ● Explorer", 
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CustomIcons.vector, size: 18),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CustomIcons.vector__1_, size: 18),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CustomIcons.profile, size: 18),
                    label: "",
                  ),
                ]
              ),
            )
          )
        ],
      ),
    );
  }
}