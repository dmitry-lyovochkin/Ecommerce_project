import 'dart:convert';
import 'dart:ui';
import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/api/homestore_api_provider.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/api/api_list.dart';
import 'package:flutter/material.dart';

class DioClient {
  final Dio _dio = Dio();

  final _baseUrl = 'https://shopapi-0575.restdb.io/rest/home';
}

// Future<Reposnsestore> getUser({required String id}) async {
//     // Perform GET request to the endpoint "/users/<id>"
//     // Response userData = await _dio.get(_baseUrl + '/users/$id');

//     // Prints the raw data returned by the server
//     print('User Info: ${userData.data}');

//     // Parsing the raw JSON data to the User class
//     Reposnsestore reposnsestore = Reposnsestore.fromJson(userData.data);

//     return reposnsestore;
// }

class HomeStoreProvider {
  Future<List<Reposnsestore>> getHomestore() async {
    final response = await http.get(
        Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
        headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

    if (response.statusCode == 200) {
      final List<String> HomestoreJson = json.decode(response.body);
      return HomestoreJson.map((json) => Reposnsestore.fromJson(json)).toList();
    } else {
      throw Exception('Error fetching Homestore');
    }
  }
}

// void main() => runApp(const MyApp1());

// class MyApp1 extends StatefulWidget {
//   const MyApp1({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp1> {
//   late Future<Reposnsestore> futureAlbum;

//   @override
//   void initState() {
//     super.initState();
//     futureAlbum = getHomestore();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fetch Data Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Fetch Data Example'),
//         ),
//         body: Center(
//           child: FutureBuilder<Reposnsestore>(
//             future: futureAlbum,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Text(snapshot.data!.title);
//               } else if (snapshot.hasError) {
//                 return Text('${snapshot.error}');
//               }

//               // By default, show a loading spinner.
//               return const CircularProgressIndicator();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
