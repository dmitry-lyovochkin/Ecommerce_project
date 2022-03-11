import 'dart:convert';

import 'package:ecommerce_project/features/home/data/models/homestore_model.dart';
import 'package:http/http.dart' as http;
class HomeStoreList {
  Future<List<Homestore>> getPostsHomeStore() async {
    final response = await http.get(
        Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
        headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

    if (response.statusCode == 200) {
      final responsejson = json.decode(response.body)[0];
      List<Homestore> list = [];
        responsejson['home_store'].forEach((e)=> list.add(Homestore.fromMap(e)));
      return list;
    } else {
      throw Exception('Failed to load');
    }
  }
}