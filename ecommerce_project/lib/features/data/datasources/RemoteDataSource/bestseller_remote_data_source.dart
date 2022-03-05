import 'dart:convert';

import 'package:ecommerce_project/features/data/models/bestseller_model.dart';
import 'package:http/http.dart' as http;

Future<List<Bestseller>> getPostsBestSeller() async {
  final response = await http.get(
      Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
      headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    List<Bestseller> list = [];
    userJson.map((json) {
      for (var i = 0; i < json['best_seller'].length; i++) {
        list.add(Bestseller.fromMap(json['best_seller'][i]));
      }
    }).toList();
    return list;
  } else {
    throw Exception('Failed to load');
  }
}
