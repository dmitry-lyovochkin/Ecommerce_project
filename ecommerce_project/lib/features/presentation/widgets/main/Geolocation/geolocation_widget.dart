import 'package:ecommerce_project/common/app_colors/app_colors.dart';
import 'package:ecommerce_project/common/app_custom_icons.dart/svg_icons.dart';
import 'package:flutter/material.dart';

class GeolocationWidget extends StatelessWidget {
  const GeolocationWidget({
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