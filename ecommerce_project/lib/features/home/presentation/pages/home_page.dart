import 'package:ecommerce_project/common/app_colors/app_colors.dart';
import 'package:ecommerce_project/features/home/presentation/widgets/BestSeller/best_seller_widget.dart';
import 'package:ecommerce_project/features/home/presentation/widgets/Geolocation/geolocation_widget.dart';
import 'package:ecommerce_project/features/home/presentation/widgets/HotSales/slider_widget.dart';
import 'package:ecommerce_project/features/home/presentation/widgets/SelectCategory/select_category_widget.dart';
import 'package:ecommerce_project/features/home/presentation/widgets/search/search_widget.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: const [
            SizedBox(height: 45),
            GeolocationWidget(),
            _TitleSelectCategory(),
            SizedBox(height: 15),
            SelectCategoryWidget(),
            SizedBox(height: 10),
            SearchWidget(),
            SizedBox(height: 15),
            _TitleHotSales(),
            SizedBox(height: 20),
            HotSalesWidget(),
            SizedBox(height: 10),
            _TitleBestSeller(),
            BestSellerWidget(),
            SizedBox(height: 40),
          ],
        ),
      ),
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
              color: AppColors.iconColor
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
              color: AppColors.iconColor
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
              color: AppColors.iconColor
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
