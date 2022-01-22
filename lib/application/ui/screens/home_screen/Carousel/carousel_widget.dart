import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/api/api_list.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/dio/http.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp235 extends StatefulWidget {
  MyApp235({Key? key}) : super(key: key);

  @override
  _MyApp235State createState() => _MyApp235State();
}

class _MyApp235State extends State<MyApp235> {
  // GetApi client = GetApi();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('gregergregre')),
        body: FutureBuilder<List<Home_store>>(
            future: getPosts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) =>
                        Text(snapshot.data![index].title));
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
      ),
    );
  }
}

// class CarouselWidget extends StatelessWidget {
//   const CarouselWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: CarouselSlider(
//           options: CarouselOptions(
//           height: 183,
//           aspectRatio: 5.0,
//           initialPage: 0,
//           viewportFraction: 1,
//         ),
//         items: <Widget> [
//           for (var i = 0; i < picture.length; i++)
//           Container(
//                   margin: const EdgeInsets.only(top: 20.0, left: 20.0),
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: NetworkImage(picture[i]),
//                       fit: BoxFit.fitHeight,
//                     ),
//         ]
//       ),
//     ));
//   }
// }

class HeroCarouselCard extends StatelessWidget {
  final Category category;

  const HeroCarouselCard({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        child: Stack(
            // children: [
            //   Image.network(
            //     // picture.imageUrl,
            //   //   fit: BoxFit.cover,
            //   //   width: 1000,
            //   // )
            // ],
            ),
      ),
    );
  }
}

// class CarouselWidget extends StatefulWidget {
//   const CarouselWidget({Key? key}) : super(key: key);

//   @override
//   State<CarouselWidget> createState() => _CarouselWidgetState();
// }

// class _CarouselWidgetState extends State<CarouselWidget> {
//   // static List<dynamic> imageList = widget.Home_store.picture.toString();
//   // late Future<Reposnsestore> futureAlbum;

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   futureAlbum = getHomestore();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       margin: const EdgeInsets.all(15),
//       child: CarouselSlider.builder(
//         itemCount: Home_store.picture.length,
//         options: CarouselOptions(
//           height: 183,
//           aspectRatio: 5.0,
//           initialPage: 0,
//           viewportFraction: 1,
//         ),
// items: Category.categories
//   .map((category) => HeroCarouselCard(category: category))
//   .toList(),
//         itemBuilder: (context, i, id) {
//           return GestureDetector(
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: Image.network(
//                 Home_store.picture,
//                 width: 700,
//                 fit: BoxFit.cover,
//               ),
//             ),

//             // onTap: () {
//             //   var url = imageList[i];
//             //   print(url.toString());
//             // },
//           );
//         },
//       ),
//     );
//   }
// }
