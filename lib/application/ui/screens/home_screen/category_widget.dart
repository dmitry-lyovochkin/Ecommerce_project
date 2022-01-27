import 'package:ecommerce_project/application/ui/screens/home_screen/Best_seller/Best_seller_widget.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Hot_sales/Slider_widget.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Select_category/Section_buttons.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/svg_icons.dart';
import 'package:ecommerce_project/application/ui/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(height: 45),
          _GeolocWidget(),
          _TitleSelectCategory(),
          SectionButtonsWidget(),
          SizedBox(height: 10),
          _SearchWidget(),
          SizedBox(height: 15),
          _TitleHotSales(),
          HotSalesWidget(),
          SizedBox(height: 10),
          _TitleBestSeller(),
          // SizedBox(height: 50),
          BestSellerWidget(),
          SizedBox(height: 280),
          // Text('')
        ]
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
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: AppColors.buttonBarColor)),
          IconButton(
            padding: const EdgeInsets.only(right: 20),
            onPressed: () {},
            icon: svgDown,
          ),
          IconButton(
            padding: const EdgeInsets.only(left: 48),
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
              color: Colors.white, borderRadius: BorderRadius.circular(50)),
          child: TextField(
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
      ),
    );
  }
}
