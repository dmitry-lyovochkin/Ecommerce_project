import 'dart:convert';

import 'package:ecommerce_project/features/home/data/models/homestore_model.dart';
import 'package:http/http.dart' as http;

Future<List<Homestore>> getPosts() async {
  final response = await http.get(
      Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
      headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    List<Homestore> list = [];
    userJson.map((json) {
      for (var i = 0; i < json.length; i++) {
        list.add(Homestore.fromMap(json['home_store'][i]));
      }
    }).toList();
    return list;
  } else {
    throw Exception('Failed to load');
  }
}