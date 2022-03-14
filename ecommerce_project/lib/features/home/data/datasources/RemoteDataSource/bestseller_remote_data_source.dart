import 'dart:convert';

import 'package:ecommerce_project/features/home/data/models/bestseller_model.dart';
import 'package:http/http.dart' as http;

class BestSellerApi {
  Future<List<Bestseller>> getBestSeller() async {
    final response = await http.get(
        Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
        headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

    if (response.statusCode == 200) {
      final responsejson = json.decode(response.body)[0];
      List<Bestseller> list = [];
        responsejson['best_seller'].forEach((e)=> list.add(Bestseller.fromMap(e)));
      return list;
    } else {
      throw Exception('Failed to load');
    }
  }
}