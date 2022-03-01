import 'package:ecommerce_project/application/ui/screens/Best_seller/Best_seller_widget.dart';
import 'package:ecommerce_project/application/ui/screens/Hot_sales/Slider_widget.dart';
import 'package:ecommerce_project/application/ui/screens/Select_category/Section_buttons.dart';
import 'package:ecommerce_project/application/ui/screens/Filter/filter_options.dart';
import 'package:ecommerce_project/application/ui/theme/app_theme.dart';
import 'package:ecommerce_project/application/ui/theme/svg_icons.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: const [
            SizedBox(height: 45),
            _GeolocWidget(),
            _TitleSelectCategory(),
            SizedBox(height: 15),
            SelectCategoryWidget(),
            SizedBox(height: 10),
            _SearchWidget(),
            SizedBox(height: 15),
            _TitleHotSales(),
            SizedBox(height: 20),
            HotSalesWidget(),
            SizedBox(height: 10),
            _TitleBestSeller(),
            BestSellerWidget(),
            SizedBox(height: 40),
          ]
        ),
      )
    );
  }
}

class _GeolocWidget extends StatelessWidget {
  const _GeolocWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: svgGeolocation,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                primary: Colors.grey[50],
                elevation: 0
              ),
            ),
            const Text(
              'Zihuatanejo, Gro',
              style: TextStyle(
                fontFamily: 'MarkPronormal400',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.buttonBarColor
              )
            ),
            ElevatedButton(
              onPressed: () {},
              child: svgDown,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                primary: Colors.grey[50],
                elevation: 0
              ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          child: svgFilter,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            primary: Colors.grey[50],
            elevation: 0
          ),
        ),
      ],
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
        Expanded(
          child: Container(
            height: 34,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                hintText: 'Search',
                hintStyle: const TextStyle(fontSize: 13, fontFamily: 'MarkPronormal400', fontWeight: FontWeight.w400),
                prefixIcon: svgSearch,
              ),
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

class _TitleSelectCategory extends StatelessWidget {
  const _TitleSelectCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Select Category',
          style: TextStyle(fontSize: 25, color: AppColors.buttonBarColor),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'view all',
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'MarkPronormal400',
              fontWeight: FontWeight.w500,
              color: IconColors.appColor
            ),
          ),
        )
      ],
    );
  }
}

class _TitleHotSales extends StatelessWidget {
  const _TitleHotSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Hot Sales',
          style: TextStyle(fontSize: 25, color: AppColors.buttonBarColor),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'see more',
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'MarkPronormal400',
              fontWeight: FontWeight.w500,
              color: IconColors.appColor
            ),
          ),
        )
      ],
    );
  }
}

class _TitleBestSeller extends StatelessWidget {
  const _TitleBestSeller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Best Seller',
          style: TextStyle(fontSize: 25, color: AppColors.buttonBarColor),
        ),
        TextButton(
          child: const Text(
            'see more',
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'MarkPronormal400',
              fontWeight: FontWeight.w500,
              color: IconColors.appColor
            ),
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return const FilterOptionsWidget();
              }
            );
          },
        )
      ],
    );
  }
}
