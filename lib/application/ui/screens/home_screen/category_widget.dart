import 'package:ecommerce_project/application/ui/screens/home_screen/category.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/list_category.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/svg_icons.dart';
import 'package:ecommerce_project/application/ui/themes/app_theme.dart';
import 'package:ecommerce_project/application/ui/themes/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
             const _GeolocWidget(),
             const _TitleSelectCategory(),
             const SizedBox(height: 10),
             const _SectionButtonsWidgett(),
             const SizedBox(height: 30),
             const _SearchWidget(),
             const SizedBox(height: 20),
             const _TitleHotSales(),
             const SizedBox(height: 150),
             const _TitleBestSeller(),
          ]))
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double _height = 32;

  @override
  double get minExtent => _height;
  @override
  double get maxExtent => _height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return const _SectionButtonsWidget();
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class _SectionButtonsWidget extends StatelessWidget {
  const _SectionButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class _HotSalesWidget extends StatelessWidget {
  const _HotSalesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _GeolocWidget extends StatelessWidget {
  const _GeolocWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 105),
      child: Row(
        children: [
          IconButton(
            padding: const EdgeInsets.only(left: 15),
            onPressed: () {},
            icon: svgGeolocation,
          ),
          const Text('Zihuatanejo, Gro',
            style: TextStyle(
              fontFamily: 'MarkPronormal400',
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: AppColors.buttonBarColor
            )
          ),
          IconButton(
            padding: const EdgeInsets.only(right: 20),
            onPressed: () {},
            icon: svgDown,
          ),
          IconButton(
            padding: const EdgeInsets.only(left: 34),
            onPressed: () {},
            icon: svgFilter,
          ),
        ],
      ),
    );
  }
}

class _SearchWidget extends StatelessWidget {
  const _SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30),
          height: 34,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white, 
            borderRadius: BorderRadius.circular(50)),
          child:  TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              hintText: 'Search',
              hintStyle: const TextStyle(
                fontSize: 13,
                fontFamily: 'MarkPronormal400',
                fontWeight: FontWeight.w400),
              prefixIcon: svgSearch,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            primary: IconColors.appColor,
          ),
          child: svgQrcode,
        )
      ],
    );
  }
}

class _SectionButtonsWidgett extends StatefulWidget {
  const _SectionButtonsWidgett({Key? key}) : super(key: key);

  @override
  State<_SectionButtonsWidgett> createState() => _SectionButtonsWidgettState();
}

class _SectionButtonsWidgettState extends State<_SectionButtonsWidgett> {
  
  late Color _buttonColor;

  @override
  void initState() {
    _buttonColor = Colors.white;
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                    setState(() {
                      if (_buttonColor == IconColors.appColor) {
                        _buttonColor = Colors.white;
                      } else {
                        _buttonColor = IconColors.appColor;
                      }
                    });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      primary: _buttonColor,
                    ),
                    child: svgPhone,
                  ),
                  const Text(
                    'Phones',
                    style: TextStyle(
                      color: AppColors.buttonBarColor,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                    setState(() {
                      if (_buttonColor == IconColors.appColor) {
                        _buttonColor = Colors.white;
                      } else {
                        _buttonColor = IconColors.appColor;
                      }
                    });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      primary: _buttonColor,
                    ),
                    child: svgComputer,
                  ),
                  const Text(
                    'Computer',
                    style: TextStyle(
                      color: AppColors.buttonBarColor,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,          
                children: [
                  ElevatedButton(
                    onPressed: () {
                    setState(() {
                      if (_buttonColor == IconColors.appColor) {
                        _buttonColor = Colors.white;
                      } else {
                        _buttonColor = IconColors.appColor;
                      }
                    });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      primary: _buttonColor,
                    ),
                    child: svgHealth,
                  ),
                  const Text(
                    'Health',
                    style: TextStyle(
                      color: AppColors.buttonBarColor,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                    setState(() {
                      if (_buttonColor == IconColors.appColor) {
                        _buttonColor = Colors.white;
                      } else {
                        _buttonColor = IconColors.appColor;
                      }
                    });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      primary: _buttonColor,
                    ),
                    child: svgBooks,
                  ),
                  const Text(
                    'Books',
                    style: TextStyle(
                      color: AppColors.buttonBarColor,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20,
          );
        }
      ),
    );
  }
}

class _TitleSelectCategory extends StatelessWidget {
  const _TitleSelectCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Select Category',
            style: TextStyle(
              fontSize: 25, 
              color: AppColors.buttonBarColor
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'view all',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'MarkPronormal400',
                  fontWeight: FontWeight.w500,
                  color: IconColors.appColor),
            ),
          )
        ],
      ),
    );
  }
}
class _TitleHotSales extends StatelessWidget {
  const _TitleHotSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Hot Sales',
            style: TextStyle(
              fontSize: 25, 
              color: AppColors.buttonBarColor
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'see more',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'MarkPronormal400',
                  fontWeight: FontWeight.w500,
                  color: IconColors.appColor),
            ),
          )
        ],
      ),
    );
  }
}
class _TitleBestSeller extends StatelessWidget {
  const _TitleBestSeller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Best Seller',
            style: TextStyle(
              fontSize: 25, 
              color: AppColors.buttonBarColor
            ), 
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'see more',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'MarkPronormal400',
                fontWeight: FontWeight.w500,
                color: IconColors.appColor),
            ),
          )
        ],
      ),
    );
  }
}
