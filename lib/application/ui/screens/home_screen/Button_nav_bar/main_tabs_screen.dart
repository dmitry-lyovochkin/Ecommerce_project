import 'package:ecommerce_project/application/ui/screens/home_screen/category_widget.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Button_nav_bar/main_tabs_view_model.dart';
import 'package:ecommerce_project/application/ui/themes/app_theme.dart';
import 'package:ecommerce_project/application/ui/themes/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainTabsScreen extends StatelessWidget {
  const MainTabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _BodyWidget(), 
      bottomNavigationBar: _NavBarWidget()
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex =
        context.select((MainTabsViewModel vm) => vm.currentTabIndex);
    return IndexedStack(
      index: currentIndex,
      children: const [
        CategoryWidget(),
        Center(child: Text('1')),
        Center(child: Text('2')),
        Center(child: Text('3')),
        Center(child: Text('4')),
      ],
    );
  }
}

class _NavBarWidget extends StatelessWidget {
  const _NavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<MainTabsViewModel>();
    final currentIndex =
        context.select((MainTabsViewModel vm) => vm.currentTabIndex);
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: SizedBox(
        height: 69,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: model.setCurrentTabIndex,
          type: BottomNavigationBarType.fixed,
          elevation: 5,
          // backgroundColor: Colors.black,
          backgroundColor: AppColors.buttonBarColor,
          items: const [
            BottomNavigationBarItem(
              icon: 
                Text(
                  '●   Explorer',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 15
                  ),
                ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(CustomIcons.vector, size: 19),
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
      ),
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List _widgetOptions = [
    CategoryWidget(),
    Text(
      'Index 2: Business',
    ),
    Text(
      'Index 3: School',
    ),
    Text(
      'Index 4: School',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return ClipRRect(
    //   borderRadius: BorderRadius.circular(25),
      // child: Scaffold(
      //   height: 69,
      return Scaffold(
        // height: 69,
        // width: double.maxFinite,
        // color: Colors.amber,
      body:  _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [ 
          BottomNavigationBarItem(
                // backgroundColor: Colors.amber,
                icon: Text(
                  '●   Explorer',
                  /* Explorer */
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(CustomIcons.vector, size: 19),
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
        ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
