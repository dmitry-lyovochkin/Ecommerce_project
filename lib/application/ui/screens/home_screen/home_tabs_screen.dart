import 'package:ecommerce_project/application/ui/themes/app_theme.dart';
import 'package:ecommerce_project/application/ui/themes/custom_icons.dart';
import 'package:ecommerce_project/application/ui/themes/my_icons_icons.dart';
import 'package:flutter/material.dart';

class MainTabsScreen extends StatelessWidget {
  const MainTabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Container()),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            // borderRadius: BorderRadius.only(
            //   topLeft: const Radius.circular(30.0),
            //   topRight: const Radius.circular(30.0)),
            child: SizedBox(
              height: 72,
              child: BottomNavigationBar(
                currentIndex: 0,
                items:  [
                  BottomNavigationBarItem(
                    backgroundColor: AppColors.buttonBarColor,
                    icon: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                        ),
                        Text(
                          '●  Explorer', 
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 16
                          ),
                        ),
                      ],
                    ), 
                      label: "", 
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(CustomIcons.vector, size: 18),
                    label: "",
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(CustomIcons.vector__1_, size: 18),
                    label: "",
                  ),
                  const BottomNavigationBarItem(
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