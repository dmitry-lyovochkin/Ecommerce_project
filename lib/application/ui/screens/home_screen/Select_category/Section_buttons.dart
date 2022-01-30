import 'package:ecommerce_project/application/ui/themes/svg_icons.dart';
import 'package:ecommerce_project/application/ui/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SectionButtonsWidget extends StatefulWidget {
  const SectionButtonsWidget({Key? key}) : super(key: key);

  @override
  State<SectionButtonsWidget> createState() => _SectionButtonsWidgetState();
}

class _SectionButtonsWidgetState extends State<SectionButtonsWidget> {
  late Color _buttonColor;

  @override
  void initState() {
    _buttonColor = Colors.white;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Row(
              children: [
                SizedBox(
                  width: 95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (_buttonColor == IconColors.appColor) {
                              _buttonColor = Colors.white;
                            } else {
                              _buttonColor = IconColors.appColor;
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          primary: _buttonColor,
                        ),
                        child: svgPhone,
                      ),
                      const Text(
                        'Phones',
                        style: TextStyle(
                          color: AppColors.buttonBarColor,
                          fontSize: 12,
                          fontFamily: 'MarkPronormal400',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (_buttonColor == IconColors.appColor) {
                              _buttonColor = Colors.white;
                            } else {
                              _buttonColor = IconColors.appColor;
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          primary: _buttonColor,
                        ),
                        child: svgComputer,
                      ),
                      const Text(
                        'Computer',
                        style: TextStyle(
                          color: AppColors.buttonBarColor,
                          fontSize: 12,
                          fontFamily: 'MarkPronormal400',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (_buttonColor == IconColors.appColor) {
                              _buttonColor = Colors.white;
                            } else {
                              _buttonColor = IconColors.appColor;
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          primary: _buttonColor,
                        ),
                        child: svgHealth,
                      ),
                      const Text(
                        'Health',
                        style: TextStyle(
                          color: AppColors.buttonBarColor,
                          fontSize: 12,
                          fontFamily: 'MarkPronormal400',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (_buttonColor == IconColors.appColor) {
                              _buttonColor = Colors.white;
                            } else {
                              _buttonColor = IconColors.appColor;
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          primary: _buttonColor,
                        ),
                        child: svgBooks,
                      ),
                      const Text(
                        'Books',
                        style: TextStyle(
                          color: AppColors.buttonBarColor,
                          fontSize: 12,
                          fontFamily: 'MarkPronormal400',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox();
          }),
    );
  }
}