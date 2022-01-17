// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';

// import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/Api/response_store.dart';
// import 'package:flutter/material.dart';

// import 'package:http/http.dart' as http;
// // import 'package:http/http.dart';

// class ReposnseStore {
//   final String id;
//   final List<Home_store> home_store;
//   final List<Best_seller> best_seller;
  
//   ReposnseStore({
//     required this.id,
//     required this.home_store,
//     required this.best_seller,
//   });

//   factory ReposnseStore.fromJson(Map<String, dynamic> json) =>
//       _$ReposnseStoreFromJson(json);

//   Map<String, dynamic> toJson() => _$ReposnseStoreToJson(this);
// }

// ReposnseStore _$ReposnseStoreFromJson(Map<String, dynamic> json) =>
//     ReposnseStore(
//       id: json['id'] as String,
//       home_store: (json['home_store'] as List<dynamic>)
//           .map((e) => Home_store.fromJson(e as String))
//           .toList(),
//       best_seller: (json['best_seller'] as List<dynamic>)
//           .map((e) => Best_seller.fromJson(e as String))
//           .toList(),
//     );

// Map<String, dynamic> _$ReposnseStoreToJson(ReposnseStore instance) =>
//     <String, dynamic>{
//       'id': instance.id,
//       'home_store': instance.home_store.map((e) => e.toJson()).toList(),
//       'best_seller': instance.best_seller.map((e) => e.toJson()).toList(),
//     };

// Future<ReposnseStore> fetchPicture() async {
//   final response = await http.get(Uri.parse('https://shopapi-0575.restdb.io/rest/home'), 
//       headers: {'x-apikey':'61ddae2e95cb716ea5ee48e4'});

//   if (response.statusCode == 200) { 
//     // final afr = jsonDecode(response.body);
//     return ReposnseStore.fromJson((jsonDecode(response.body)));
//   } else {
//     throw Exception('Failed to load picture');
//   }
// }

// void main() => runApp(const MyApp1());

// class MyApp1 extends StatefulWidget {
//   const MyApp1({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp1> {
//   late Future<ReposnseStore> futurePicture;

//   @override
//   void initState() {
//     super.initState();
//     futurePicture = fetchPicture();
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
//           child: FutureBuilder<ReposnseStore>(
//             future: futurePicture,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 // return Text(snapshot.data!.title);
//               } else if (snapshot.hasError) {
//                 return Text('${snapshot.error}');
//               }
//               return const CircularProgressIndicator();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
