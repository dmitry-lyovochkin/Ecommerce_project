// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/api/api_list.dart';
// import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/api/homestore_api_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

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
//     return Container(
//       margin: const EdgeInsets.all(15),
//       child: CarouselSlider.builder(
//         itemCount: Reposnsestore.picture.length,
//         options: CarouselOptions(
//           height: 183,
//           aspectRatio: 5.0,
//           initialPage: 0,
//           viewportFraction: 1,
//         ),
//         itemBuilder: (context, i, id) {
//           return GestureDetector(
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: Image.network(
//                 Reposnsestore.picture,
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
