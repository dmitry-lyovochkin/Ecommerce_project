import 'dart:convert';
import 'dart:io';

import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/api/api_list.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/http/Models/get_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Home_store>> getPosts() async {
  final response = await http.get(
      Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
      headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});
        
  print(response.statusCode);

  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    return userJson.map((json) => Home_store.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load');
  }
}

class MyApp111 extends StatefulWidget {
  const MyApp111({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp111> {
  //  late List<Home_store> futureAlbum;

  // @override
  //  initState() async{
  //   super.initState();
  //    await getPosts();
  // }

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
          child: FutureBuilder<List>(
            future: getPosts(),
            builder: (context, snapshot) {
              print(snapshot.data);
              print (snapshot.data.runtimeType);
              if (snapshot.hasData) {
                // return Text(snapshot.data!.title);
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



    // if (response.statusCode == 200) {
      // final List<dynamic> userJson = json.decode(response.body);

    //   return Home_store.fromJson(jsonDecode(response.body));
    // } else {
    //   throw Exception('Failed to load');
    // }