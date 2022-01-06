import 'package:ecommerce_project/application/ui/screens/home_screen/category.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/list_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          // SizedBox(height: 5),
          // _GeolocWidget(),
          // SizedBox(height: 10),
          // SelectCategoryWidget(),
          // _SearchWidget(),
          // SizedBox(height: 5),
          // _HotSalesWidget(),
          // SizedBox(height: 10),
          // SelectCategoryWidget(),
          // const _LogoWidget(),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            //  SizedBox(height: 5),
            _GeolocWidget(),
            SizedBox(height: 20),
            _SectionButtonsWidgett(),
            SizedBox(height: 40),
            _SearchWidget(),
          ]))
        ],
      ),
    );
  }
}


class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double _height = 56;

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

class _LogoWidget extends StatelessWidget {
  const _LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 200,
      ),
    );
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
      padding: const EdgeInsets.symmetric(horizontal: 120),
      child: Row(
        children: [
          const Text('Zihuatanejo, Gro',
              style: TextStyle(
                fontFamily: 'MarkPronormal400',
                fontSize: 15,
                fontWeight: FontWeight.w700,
              )
              ),
              IconButton(
                onPressed: () {}, 
                icon: const ImageIcon(
                  AssetImage("assets/icons/Geo.png"),
                  color: Colors.red,
                  size: 24,
                ),
              )
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
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: 34,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 0),
                hintText: 'Search',
                hintStyle: TextStyle(
                    fontSize: 13,
                    fontFamily: 'MarkPronormal400',
                    fontWeight: FontWeight.w400),
                prefixIcon: Icon(Icons.search, color: Colors.orange),
              ),
            ),
            ),
              Ink(
                decoration:  ShapeDecoration(
                    color: Colors.orange[800],
                    shape: const CircleBorder(),
                ),
                child: IconButton(
                    onPressed: () {}, 
                    icon: const ImageIcon(
                      AssetImage("assets/icons/Search1.png"),
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
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
  List<Map> categories = [
    {'name': 'Phone', 'IconPath': 'assets/icons/GroupGroup.png'},
    {'name': 'Computer', 'IconPath': 'assets/icons/Computer.png'},
    {'name': 'Health', 'IconPath': 'assets/icons/Health.png'},
    {'name': 'Books', 'IconPath': 'assets/icons/GroupGroup.png'},
    {'name': 'Phone', 'IconPath': 'assets/icons/GroupGroup.png'},
    {'name': 'Phone', 'IconPath': 'assets/icons/GroupGroup.png'},
    {'name': 'Phone', 'IconPath': 'assets/icons/GroupGroup.png'}
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: CircleBorder(),
                    
                  ),
                  child: IconButton(
                    iconSize: 27,
                    onPressed: () {},
                    color: Colors.grey,
                    highlightColor: Colors.red,
                    hoverColor: Colors.green,
                    focusColor: Colors.purple,
                    splashColor: Colors.yellow,
                    disabledColor: Colors.amber,
                    icon: Image.asset(
                      categories[index]['IconPath'],
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 23),
                Text(categories[index]['name'],
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.end
                    
                )  
              ],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 23,
            );
          }),
    );
  }
}
