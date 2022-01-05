import 'package:flutter/material.dart';

class SelectCategoryWidget extends StatefulWidget {
   SelectCategoryWidget({Key? key}) : super(key: key);

  List<Map> categories = [
    {'name': 'Phone', 'IconPath': 'assets/icons/Phone.png'},
    {'name': 'Computer', 'IconPath': 'assets/icons/Computer.png'},
    {'name': 'Health', 'IconPath': 'assets/icons/Health.png'},
    {'name': 'Books', 'IconPath': 'assets/icons/Books.png'},
    {'name': 'Phone', 'IconPath': 'assets/icons/Phone.png'},
    {'name': 'Phone', 'IconPath': 'assets/icons/Phone.png'},
    {'name': 'Phone', 'IconPath': 'assets/icons/Phone.png'}
  ];

  @override
  State<SelectCategoryWidget> createState() => SelectCategoryWidgetState();
}

class SelectCategoryWidgetState extends State<SelectCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 250,
            ),
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.amber,
              ),
              textAlign: TextAlign.center, 
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}