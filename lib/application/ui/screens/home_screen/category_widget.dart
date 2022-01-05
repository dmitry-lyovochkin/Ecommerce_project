import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: const [
              SizedBox(height: 5),
              _GeolocWidget(),
              SelectCategoryWidget(),
              SizedBox(height: 10),
              _SearchWidget(),
              SizedBox(height: 5),
              _HotSalesWidget(),
              SizedBox(height: 10),
              // _SectionButtonsWidget(),
            ]
          )
        ),
      ),
    );
  }
}

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
            SizedBox(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Column(
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
                          textAlign: TextAlign.center
                        )
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class _HotSalesWidget extends StatelessWidget {
  const _HotSalesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _GeolocWidget extends StatelessWidget {
  const _GeolocWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 24, left: 70),
      child: Text('Zihuatanejo, Gro',
          style: TextStyle(
            fontFamily: 'MarkPronormal400',
            fontSize: 15,
            fontWeight: FontWeight.w700,
          )),
    );
  }
}

class _SearchWidget extends StatelessWidget {
  const _SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          height: 34,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(50)),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              hintText: 'Search',
              hintStyle: TextStyle(
                  fontSize: 13,
                  fontFamily: 'MarkPronormal400',
                  fontWeight: FontWeight.w400),
              prefixIcon: Icon(Icons.search, color: Colors.orange),
            ),
          )),
    );
  }
}

// class _SectionButtonsWidget extends StatelessWidget {
//   const _SectionButtonsWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       itemCount: 25,
//       separatorBuilder: (BuildContext context, int index) => const Divider(),
//       itemBuilder: (BuildContext context, int index) {
//         return ListTile(
//           title: Text('item $index'),
//         );
//       },
//     );
//   }
// }
