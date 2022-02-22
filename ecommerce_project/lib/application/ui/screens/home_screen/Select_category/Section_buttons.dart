import 'package:ecommerce_project/application/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SectionButtonsWidget extends StatefulWidget {
  const SectionButtonsWidget({Key? key}) : super(key: key);

  @override
  State<SectionButtonsWidget> createState() => _SectionButtonsWidgetState();
}

class _SectionButtonsWidgetState extends State<SectionButtonsWidget> {
  final List<dynamic> categories = [
    {'name': 'Phones', 'IconPath': 'assets/Phone.svg'},
    {'name': 'Computer', 'IconPath': 'assets/Computer.svg'},
    {'name': 'Health', 'IconPath': 'assets/Health.svg'},
    {'name': 'Books', 'IconPath': 'assets/Books.svg'},
    {'name': 'Phone', 'IconPath': 'assets/Books.svg'},
    {'name': 'Phone', 'IconPath': 'assets/Books.svg'},
    {'name': 'Phone', 'IconPath': 'assets/Books.svg'}
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
          return Container(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  width: 84,
                  height: 82,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      primary: Colors.white,
                    ),
                    child: SvgPicture.asset(
                      categories[index]['IconPath'],
                      fit: BoxFit.scaleDown,
                      color: Colors.grey,
                      height: 60,
                    ),
                  ),
                ),
                Text(
                  '${categories[index]['name']}',
                  style: const TextStyle(
                    color: AppColors.buttonBarColor,
                    fontSize: 12,
                    fontFamily: 'MarkPronormal400',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
