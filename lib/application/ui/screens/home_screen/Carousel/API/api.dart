// import 'dart:convert';
// import 'dart:io';
// import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/Api/Home_Store/home_store.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/Api/get_model.dart';

// class APiClient {
//   final _client = HttpClient();
//   static const _host = 'https://shopapi-0575.restdb.io/rest/home';
//   static const _apiKey = '61ddae2e95cb716ea5ee48e4';

//   Future<ShopApiResponseEntity> homestore() async {
//     final parser = (dynamic json) {
//       final jsonMap = json as Map<String, dynamic>;
//       final response = ShopApiResponseEntity.fromJson(jsonMap);
//       return response;
//     };
//     final result = _get(
//       '/main',
//       parser,
//       <String, dynamic>{'x-apikey': _apiKey},
//     );
//     return result;
//   }

// Future<T> _get<T> (
//   String path,
//   T Function(dynamic json) parser, 
//   [
//   Map<String, dynamic>? parameters,
//   ]) async {
//     final url = _makeUri(path, parameters);
//     try {
//       final request = await _client.getUrl(url);
//       final response = await request.close();
//       final dynamic json = (await response.jsonDecode());
//       // _validateResponse(response, json);
//       final result = parser(json);
//       return result;
//     } on SocketException {
//       throw ApiClientException(apiClientExceptionType.Network);
//     } on ApiClientException {
//       rethrow;
//     } catch (_) {
//       throw ApiClientException(ApiClientExceptionType.Other);
//     }
//   }
// }



//   Future<ShopApiResponseEntity> fetchAlbum() async {
//   final response = await http.get(Uri.parse('https://shopapi-0575.restdb.io/rest/home'), 
//       headers: {'x-apikey':'61ddae2e95cb716ea5ee48e4'});

//   if (response.statusCode == 200) { 
//     // final afr = jsonDecode(response.body);
//     return ShopApiResponseEntity.fromJson((jsonDecode(response.body)));
//   } else {
//     throw Exception('Failed to load picture');
//   }
// }
// }
// void main() => runApp(const MyApp1());

// class MyApp1 extends StatefulWidget {
//   const MyApp1({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp1> {
//   late Future<ShopApiResponseEntity> futureAlbum;

//   @override
//   void initState() {
//     super.initState();
//     futureAlbum = fetchAlbum();
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
//           child: FutureBuilder<ShopApiResponseEntity>(
//             future: futureAlbum,
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
