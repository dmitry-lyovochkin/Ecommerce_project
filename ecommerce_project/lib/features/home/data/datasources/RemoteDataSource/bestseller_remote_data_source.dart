import 'dart:convert';

import 'package:ecommerce_project/features/home/data/models/bestseller_model.dart';
import 'package:http/http.dart' as http;

class BestSellerApi {
  Future<List<BestsellerModel>> getBestSeller() async {
    final response = await http.get(
        Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
        headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

    if (response.statusCode == 200) {
      final responsejson = json.decode(response.body)[0];
      List<BestsellerModel> list = [];
        responsejson['best_seller'].forEach((e)=> list.add(BestsellerModel.fromMap(e)));
      return list;
    } else {
      throw Exception('Failed to load');
    }
  }
}

// 7