import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ecommerce_project/common/app_colors/app_colors.dart';
import 'package:ecommerce_project/common/app_custom_icons.dart/svg_icons.dart';

class CartItemsWidget extends StatelessWidget {
  final String? images;
  final int? price;
  final String? title;
  final int? items;
  final String? delivery;

  const CartItemsWidget({
    Key? key,
    required this.images,
    required this.price,
    required this.title,
    required this.items,
    required this.delivery,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.buttonBarColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.circular(12)
              ),
              height: 90,
              width: 90,
                child:  Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 2, left: 2, right: 12 ),
                  child: CachedNetworkImage(
                    imageUrl: images!, 
                    fit: BoxFit.contain,
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: const TextStyle(
                      fontSize: 21,
                      fontFamily: 'MarkPronormal400',
                      fontWeight: FontWeight.w600,
                      color: Colors.white
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
                      icon: Text(
                        items.toString(),
                        style: const TextStyle(
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
            Expanded(
              child: ElevatedButton(
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
            ),
          ]
        ),
      )
    );
  }
}
