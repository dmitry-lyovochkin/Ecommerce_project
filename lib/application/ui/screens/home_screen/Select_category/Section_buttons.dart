import 'package:ecommerce_project/application/ui/theme/app_theme.dart';
import 'package:ecommerce_project/application/ui/theme/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// class SectionButtonsWidget extends StatefulWidget {
//   const SectionButtonsWidget({Key? key}) : super(key: key);

//   @override
//   State<SectionButtonsWidget> createState() => _SectionButtonsWidgetState();
// }

// class _SectionButtonsWidgetState extends State<SectionButtonsWidget> {
//   late Color _buttonColor;

//   @override
//   void initState() {
//     _buttonColor = Colors.white;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 120,
//       child: ListView.separated(
//           padding: const EdgeInsets.symmetric(horizontal: 13),
//           scrollDirection: Axis.horizontal,
//           itemCount: 2,
//           itemBuilder: (context, index) {
//             return Row(
//               children: [
//                 SizedBox(
//                   width: 95,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {
//                           setState(() {
//                             if (_buttonColor == IconColors.appColor) {
//                               _buttonColor = Colors.white;
//                             } else {
//                               _buttonColor = IconColors.appColor;
//                             }
//                           });
//                         },
//                         style: ElevatedButton.styleFrom(
//                           shape: const CircleBorder(),
//                           primary: _buttonColor,
//                         ),
//                         child: svgPhone,
//                       ),
//                       const Text(
//                         'Phones',
//                         style: TextStyle(
//                           color: AppColors.buttonBarColor,
//                           fontSize: 12,
//                           fontFamily: 'MarkPronormal400',
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   width: 95,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {
//                           setState(() {
//                             if (_buttonColor == IconColors.appColor) {
//                               _buttonColor = Colors.white;
//                             } else {
//                               _buttonColor = IconColors.appColor;
//                             }
//                           });
//                         },
//                         style: ElevatedButton.styleFrom(
//                           shape: const CircleBorder(),
//                           primary: _buttonColor,
//                         ),
//                         child: svgComputer,
//                       ),
//                       const Text(
//                         'Computer',
//                         style: TextStyle(
//                           color: AppColors.buttonBarColor,
//                           fontSize: 12,
//                           fontFamily: 'MarkPronormal400',
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   width: 95,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {
//                           setState(() {
//                             if (_buttonColor == IconColors.appColor) {
//                               _buttonColor = Colors.white;
//                             } else {
//                               _buttonColor = IconColors.appColor;
//                             }
//                           });
//                         },
//                         style: ElevatedButton.styleFrom(
//                           shape: const CircleBorder(),
//                           primary: _buttonColor,
//                         ),
//                         child: svgHealth,
//                       ),
//                       const Text(
//                         'Health',
//                         style: TextStyle(
//                           color: AppColors.buttonBarColor,
//                           fontSize: 12,
//                           fontFamily: 'MarkPronormal400',
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   width: 95,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {
//                           setState(() {
//                             if (_buttonColor == IconColors.appColor) {
//                               _buttonColor = Colors.white;
//                             } else {
//                               _buttonColor = IconColors.appColor;
//                             }
//                           });
//                         },
//                         style: ElevatedButton.styleFrom(
//                           shape: const CircleBorder(),
//                           primary: _buttonColor,
//                         ),
//                         child: svgBooks,
//                       ),
//                       const Text(
//                         'Books',
//                         style: TextStyle(
//                           color: AppColors.buttonBarColor,
//                           fontSize: 12,
//                           fontFamily: 'MarkPronormal400',
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           },
//           separatorBuilder: (context, index) {
//             return const SizedBox();
//           }),
//     );
//   }
// }

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
                      // title: Text('Entry ${entries[index]}'),
                      // leading: Image.asset(
                      //   entries[index]['IconPath'],
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
