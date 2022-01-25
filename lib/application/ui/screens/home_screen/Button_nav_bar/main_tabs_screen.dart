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
        body: _BodyWidget(), bottomNavigationBar: _NavBarWidget());
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
      // borderRadius: BorderRadius.only(
      //   topLeft: const Radius.circular(30.0),
      //   topRight: const Radius.circular(30.0)),
      child: SizedBox(
        height: 69,
        child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: model.setCurrentTabIndex,
            items: [
              BottomNavigationBarItem(
                backgroundColor: AppColors.buttonBarColor,
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                    ),
                    Text(
                      '●   Explorer',
                      /* Explorer */
                      style: TextStyle(color: Colors.white, fontSize: 15),
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
            ]),
      ),
    );
  }
}
