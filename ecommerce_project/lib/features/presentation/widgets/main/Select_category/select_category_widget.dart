import 'package:ecommerce_project/common/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectCategoryWidget extends StatefulWidget {
  const SelectCategoryWidget({Key? key}) : super(key: key);

  @override
  State<SelectCategoryWidget> createState() => _SelectCategoryWidgetState();
}

class _SelectCategoryWidgetState extends State<SelectCategoryWidget> {
  int _selectedIndex = 0;

  final List<dynamic> categories = [
    {'name': 'Phones', 'IconPath': 'assets/Phone.svg'},
    {'name': 'Computer', 'IconPath': 'assets/Computer.svg'},
    {'name': 'Health', 'IconPath': 'assets/Health.svg'},
    {'name': 'Books', 'IconPath': 'assets/Books.svg'},
    {'name': '', 'IconPath': 'assets/Phone.svg'},
    {'name': '', 'IconPath': 'assets/Phone.svg'},
    {'name': '', 'IconPath': 'assets/Phone.svg'}
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: double.maxFinite,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                width: 90,
                height: 82,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    primary: _selectedIndex == index ? AppColors.iconColor : Colors.white,
                  ),
                  child: SvgPicture.asset(
                    categories[index]['IconPath'],
                    fit: BoxFit.scaleDown,
                    color: _selectedIndex == index ? Colors.white : Colors.grey,
                    height: 60,
                  ),
                ),
              ),
              Text(
                '${categories[index]['name']}',
                style:  TextStyle(
                  color: _selectedIndex == index ? AppColors.iconColor : AppColors.buttonBarColor  ,
                  fontSize: 12,
                  fontFamily: 'MarkPronormal400',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          );
        }
      )
    );
  }
}