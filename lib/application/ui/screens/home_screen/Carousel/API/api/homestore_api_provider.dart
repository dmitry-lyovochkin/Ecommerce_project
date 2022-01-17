import 'dart:convert';

import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/api/api_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeStoreProvider {
  Future<List<Homestore>> getHomestore() async {
    final response = await http.get(
        Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
        headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

    if (response.statusCode == 200) {
      final List<dynamic> HomestoreJson = json.decode(response.body);
      return HomestoreJson.map((json) => Homestore.fromJson(json)).toList();
    } else {
      throw Exception('Error fetching Homestore');
    }
  }
}


