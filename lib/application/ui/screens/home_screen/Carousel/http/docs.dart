import 'dart:async';
import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/http/Models/get_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<HomeStore> fetchAlbum() async {
  final response = await http.get(Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
        headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return HomeStore.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

// class Album {
//   final int userId;
//   final int id;
//   final String title;

//   Album({
//     required this.userId,
//     required this.id,
//     required this.title,
//   });

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }

void main() => runApp(const MyApp1());

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  late Future<HomeStore> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<HomeStore>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
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
//     return Container(
//       margin: const EdgeInsets.all(15),
//       child: CarouselSlider.builder(
//         itemCount: HomeStore.picture.length,
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
//                 HomeStore.picture,
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
