import 'package:flutter/material.dart';
List<Map> categories = [
    {'name': 'Phone', 'IconPath': 'assets/icons/Phone.png'},
    {'name': 'Computer', 'IconPath': 'assets/icons/Computer.png'},
    {'name': 'Health', 'IconPath': 'assets/icons/Health.png'},
    {'name': 'Books', 'IconPath': 'assets/icons/Books.png'},
    {'name': 'Phone', 'IconPath': 'assets/icons/Phone.png'},
    {'name': 'Phone', 'IconPath': 'assets/icons/Phone.png'},
    {'name': 'Phone', 'IconPath': 'assets/icons/Phone.png'}
  ];
class SelectCategoryWidget extends StatefulWidget {
  const SelectCategoryWidget({Key? key}) : super(key: key);

  @override
  State<SelectCategoryWidget> createState() => SelectCategoryWidgetState();
}

class SelectCategoryWidgetState extends State<SelectCategoryWidget> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            const Text(
              'Categories',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.amber,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          categories[index]['IconPath'],
                          height: 50,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(categories[index]['name'],
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center)
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 71,
//       width: 71,
//       child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: categories.length,
//                 itemBuilder: (context, index) {
//                   return Row(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.all(20),
//                         margin: const EdgeInsets.only(left: 40),
//                         decoration: BoxDecoration(
//                           color: Colors.red,
//                           borderRadius: BorderRadius.circular(40),
//                         ),
//                         child: Image.asset(
//                           categories[index]['IconPath'],
//                           height: 70,
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                       Text(categories[index]['name'],
//                           style: const TextStyle(
//                             color: Colors.black,
//                           ),
//                           textAlign: TextAlign.center)
//                     ],
//                   );
//                 })
//     );
//   }
// }