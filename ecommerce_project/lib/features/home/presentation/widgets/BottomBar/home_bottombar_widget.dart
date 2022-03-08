import 'package:badges/badges.dart';
import 'package:ecommerce_project/common/app_colors/app_colors.dart';
import 'package:ecommerce_project/common/app_custom_icons.dart/custom_icons.dart';
import 'package:ecommerce_project/features/cart/presentation/pages/cart_page.dart';
import 'package:ecommerce_project/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class HomeBottomWidget extends StatefulWidget {
  const HomeBottomWidget({Key? key}) : super(key: key);

  @override
  State<HomeBottomWidget> createState() => _HomeBottomWidgetState();
}

class _HomeBottomWidgetState extends State<HomeBottomWidget> {
  int _selectedIndex = 0;
  static const List _widgetOptions = [
    HomePage(),
    Center(
      child: Text(
        'Favourites',
      ),
    ),
    Center(
      child: Text(
        'Favourites',
      ),
    ),
    Center(
      child: Text(
        'Settings',
      ),
    ),
  ];

  void onSelectTub(int index) {
    if (index != 1) {
      setState(() {
        _selectedIndex = index;
      });
    } else {
      Navigator.push<Widget>(context,MaterialPageRoute(builder: (context) => const CartWidget()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: SizedBox(
          height: 69,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: AppColors.buttonBarColor,
            unselectedItemColor: Colors.white,
            onTap: onSelectTub,
            items: [
              BottomNavigationBarItem(
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      '●   Explorer',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                label: "",
              ),
               BottomNavigationBarItem(
                icon: Badge(
                  child: const Icon(CustomIcons.vector, size: 19),
                  badgeContent: const Text("2"),
                  position: BadgePosition.topStart(top: -14, start: 12)
                ),
                label: "",
              ),
              const BottomNavigationBarItem(
                icon: Icon(CustomIcons.vector1, size: 18),
                label: "",
              ),
              const BottomNavigationBarItem(
                icon: Icon(CustomIcons.profile, size: 18),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}