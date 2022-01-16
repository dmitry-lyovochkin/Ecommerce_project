import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
// import 'package:http/http.dart';

class Picture {
  final int id;
  final String title;
  final String subtitle;
  final String picture;
  final bool is_new;
  final bool is_buy;

  Picture({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.picture,
    required this.is_new,
    required this.is_buy,
  });

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);

  Map<String, dynamic> toJson() => _$PictureToJson(this);
}

Picture _$PictureFromJson(Map<String, dynamic> json) => Picture(
      id: json['id'] as int,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      picture: json['picture'] as String,
      is_new: json['is_new'] as bool,
      is_buy: json['is_buy'] as bool,
    );

Map<String, dynamic> _$PictureToJson(Picture instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.picture,
      'is_new': instance.is_new,
      'is_buy': instance.is_buy,
    };
Future<Picture> fetchPicture() async {
  final response = await http.get(Uri.parse('https://shopapi-0575.restdb.io/rest/home'), 
      headers: {'x-apikey':'61ddae2e95cb716ea5ee48e4'});

  if (response.statusCode == 200) { 
    final afr = jsonDecode(response.body);

    return Picture.fromJson((jsonDecode(response.body) as List<Map<String, dynamic>>)[0]['home_store'][0]);
  } else {
    throw Exception('Failed to load picture');
  }
}

void main() => runApp(const MyApp1());

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  late Future<Picture> futurePicture;

  @override
  void initState() {
    super.initState();
    futurePicture = fetchPicture();
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
          child: FutureBuilder<Picture>(
            future: futurePicture,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
