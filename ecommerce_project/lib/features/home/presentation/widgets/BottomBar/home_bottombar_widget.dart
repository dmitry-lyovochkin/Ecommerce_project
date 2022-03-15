import 'package:badges/badges.dart';
import 'package:ecommerce_project/common/app_colors/app_colors.dart';
import 'package:ecommerce_project/common/app_custom_icons.dart/custom_icons.dart';
import 'package:ecommerce_project/features/cart/data/repositories/basket_repository.dart';
import 'package:ecommerce_project/features/cart/data/repositories/cart_repository.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_event.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_state.dart';
import 'package:ecommerce_project/features/cart/presentation/pages/cart_page.dart';
import 'package:ecommerce_project/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBottomWidget extends StatefulWidget {
  const HomeBottomWidget({Key? key}) : super(key: key);

  @override
  State<HomeBottomWidget> createState() => _HomeBottomWidgetState();
}

class _HomeBottomWidgetState extends State<HomeBottomWidget> {
  final basketRepository = BasketRepository();
  final getCartItemsRepository = CartRepository();
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
    return BlocProvider<CartBloc>(
      create: (context) => 
        CartBloc(basketRepository, getCartItemsRepository)..add(const CartLoadEvent()),
      child: Scaffold(
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
                    badgeContent: const BottomNavBarWidget(),
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
      )
    );
  }
}

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  final basketRepository = BasketRepository();
  final getCartItemsRepository = CartRepository();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
      if (state is CartLoadingState) {
        return const Center( 
          child: SizedBox()
        );
      }
      if (state is CartLoadedState) { 
        return Text(
          state.loadedBasket.length.toString()
        );
      }
        if (state is CartErrorState) {
          return const Center(
            child: Text('Error getcing details')
          );
        }
          return const CircularProgressIndicator();
      }
    );
  }
}