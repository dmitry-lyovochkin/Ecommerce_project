import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce_project/common/app_colors/app_colors.dart';
import 'package:ecommerce_project/common/app_custom_icons.dart/svg_icons.dart';

class CartItemsWidget extends StatelessWidget {
  final String? images;
  final int? price;
  final String? title;
  final String? delivery;

  const CartItemsWidget({
    Key? key,
    required this.images,
    required this.price,
    required this.title,
    required this.delivery, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 20),
      color: AppColors.buttonBarColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.circular(12)
              ),
              height: 95,
              width: 95,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: CachedNetworkImage(
                    imageUrl: images ?? '', 
                    fit: BoxFit.fitWidth,
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(
                      title!,
                      maxLines: 3,
                      style: const TextStyle(
                        fontSize: 21,
                        fontFamily: 'MarkPronormal400',
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                    ),
                  ),
                  const SizedBox(height: 7,),
                  Text(
                    '\$' + price.toString(),
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 21,
                      fontFamily: 'MarkPronormal400',
                      fontWeight: FontWeight.w600,
                      color: AppColors.iconColor
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            Container(
              height: 100,
              width: 30,
              decoration: BoxDecoration(
                color: AppColors.containerColor,
                borderRadius: BorderRadiusDirectional.circular(12)
              ),
              child: Column(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: svgMinus,
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 18
                        )
                      )
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: svgPlus
                    ),
                  ),
                ],
              )
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(), 
                primary: AppColors.buttonBarColor
              ), 
              child: SvgPicture.asset(
                assetCart,
                height: 18,
              )
            ),
          ]
        ),
      )
    );
  }
}
