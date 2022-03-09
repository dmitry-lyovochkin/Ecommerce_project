import 'package:ecommerce_project/common/app_colors/app_colors.dart';
import 'package:ecommerce_project/common/app_custom_icons.dart/svg_icons.dart';
import 'package:ecommerce_project/features/home/presentation/widgets/Filter/filter_widget.dart';
import 'package:flutter/material.dart';


class SearchWidget extends StatelessWidget {
  const SearchWidget({
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
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return const FilterWidget();
              }
            );
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            primary: AppColors.iconColor,
          ),
          child: svgQrcode,
        )
      ],
    );
  }
}