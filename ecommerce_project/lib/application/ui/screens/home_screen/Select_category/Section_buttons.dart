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
    {'name': 'Phones', 'IconPath': 'assets/Phone.svg', 'isTap': false},
    {'name': 'Computer', 'IconPath': 'assets/Computer.svg', 'isTap': false},
    {'name': 'Health', 'IconPath': 'assets/Health.svg', 'isTap': false},
    {'name': 'Books', 'IconPath': 'assets/Books.svg', 'isTap': false},
    {'name': 'Phone', 'IconPath': 'assets/Books.svg', 'isTap': false},
    {'name': 'Phone', 'IconPath': 'assets/Books.svg', 'isTap': false},
    {'name': 'Phone', 'IconPath': 'assets/Books.svg', 'isTap': false}
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: double.maxFinite,
      child: ListView(
        // itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        // itemBuilder: (BuildContext context, int index) {
          children: [ Container(
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
                    onPressed: () {
                      setState(() {
                        categories[0]['isTap'] = !categories[0]['isTap'];
                      });
                      
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      primary: categories[0]['isTap'] ? Colors.white : IconColors.appColor ,
                    ),
                    child: SvgPicture.asset(
              categories[0]['IconPath'],
              fit: BoxFit.scaleDown,
              color: Colors.grey,
              height: 60,
            ),
          ),
        ),
        Text(
          '${categories[0]['name']}',
          style:  TextStyle(
            color: categories[0]['isTap'] ?AppColors.buttonBarColor : IconColors.appColor,
            fontSize: 12,
            fontFamily: 'MarkPronormal400',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  )
]));
// @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 110,
//       width: double.maxFinite,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//           children: list, 
//       ),
//     );
//   }
}}