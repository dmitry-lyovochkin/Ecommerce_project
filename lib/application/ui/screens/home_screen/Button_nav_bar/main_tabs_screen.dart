import 'package:ecommerce_project/application/ui/screens/home_screen/category_widget.dart';
import 'package:ecommerce_project/application/ui/themes/app_theme.dart';
import 'package:ecommerce_project/application/ui/themes/custom_icons.dart';
import 'package:flutter/material.dart';

// class MainTabsScreen extends StatelessWidget {
//   const MainTabsScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: _BodyWidget(), 
//       bottomNavigationBar: _NavBarWidget()
//     );
//   }
// }

// class _BodyWidget extends StatelessWidget {
//   const _BodyWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final currentIndex =
//         context.select((MainTabsViewModel vm) => vm.currentTabIndex);
//     return IndexedStack(
//       index: currentIndex,
//       children: const [
//         CategoryWidget(),
//         Center(child: Text('1')),
//         Center(child: Text('2')),
//         Center(child: Text('3')),
//         Center(child: Text('4')),
//       ],
//     );
//   }
// }

// class _NavBarWidget extends StatelessWidget {
//   const _NavBarWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final model = context.read<MainTabsViewModel>();
//     final currentIndex =
//         context.select((MainTabsViewModel vm) => vm.currentTabIndex);
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(25),
//       child: SizedBox(
//         height: 69,
//         child: BottomNavigationBar(
//           currentIndex: currentIndex,
//           onTap: model.setCurrentTabIndex,
//           type: BottomNavigationBarType.fixed,
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           elevation: 0,
//           // backgroundColor: Colors.black,
//           backgroundColor: AppColors.buttonBarColor,
//           items:  [
//             BottomNavigationBarItem(
//               icon: 
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: const [
//                     Text(
//                       '●   Explorer',
//                       style: TextStyle(
//                         color: Colors.white, 
//                         fontSize: 15
//                       ),
//                     ),
//                   ],
//                 ),
//               label: "",
//             ),
//             const BottomNavigationBarItem(
//               icon: Icon(CustomIcons.vector, size: 19),
//               label: "",
//             ),
//             const BottomNavigationBarItem(
//               icon: Icon(CustomIcons.vector__1_, size: 18),
//               label: "",
//             ),
//             const BottomNavigationBarItem(
//               icon: Icon(CustomIcons.profile, size: 18),
//               label: "",
//             ),
//           ]
//         ),
//       ),
//     );
//   }
// }


class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
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
      return Scaffold(
      body:  _widgetOptions.elementAt(_selectedIndex),
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
            onTap: _onItemTapped,
            items: [   
              BottomNavigationBarItem(
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      '●   Explorer',
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 15
                      ),
                    ),
                  ],
                ),
                label: "",
              ),
              const BottomNavigationBarItem(
                icon: Icon(CustomIcons.vector, size: 19),
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
            ],
          ),
        ),
      ),
    );
  }
}
