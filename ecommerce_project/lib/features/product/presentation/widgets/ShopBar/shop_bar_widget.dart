import 'package:ecommerce_project/common/app_colors/app_colors.dart';
import 'package:ecommerce_project/features/product/presentation/widgets/Product/product_widget.dart';
import 'package:flutter/material.dart';

class ShopBarWidget extends StatelessWidget {
  final List<Widget> tabs = const [
    Tab(text: 'Shop'),
    Tab(text: 'Details'),
    Tab(text: 'Features'),
  ];

  const ShopBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Container(
              constraints: const BoxConstraints.expand(height: 35),
              child: TabBar(
                labelStyle: const TextStyle(
                  fontFamily: 'MarkPronormal400',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.buttonBarColor,
                ),
                labelColor: AppColors.buttonBarColor,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: AppColors.iconColor, 
                    width: 3
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 20),
                ),
                unselectedLabelColor: Colors.grey,
                unselectedLabelStyle: const TextStyle(
                  fontFamily: 'MarkPronormal400',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: AppColors.buttonBarColor,
                ),
                tabs: tabs,
              ),
            ),
            const SizedBox(height: 18),
            const Expanded(
              child: TabBarView(
                children: [
                  ProductWidget(),
                  Center(child: Text('Details Body')),
                  Center(child: Text('Features Body')),
                ]
              ),
            )
          ],
        ),
      )
    );
  }
}