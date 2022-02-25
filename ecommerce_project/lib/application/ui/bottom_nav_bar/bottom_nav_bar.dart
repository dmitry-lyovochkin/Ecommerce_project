import 'package:badges/badges.dart';
import 'package:ecommerce_project/application/ui/screens/cart/cart.dart';
import 'package:ecommerce_project/application/ui/screens/home_widget.dart';
import 'package:ecommerce_project/application/ui/theme/app_theme.dart';
import 'package:ecommerce_project/application/ui/theme/custom_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;
  static const List _widgetOptions = [
    HomeWidget(),
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
      Navigator.push<Widget>(
        context,
        MaterialPageRoute(builder: (context) => const CartWidget()),
      );
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