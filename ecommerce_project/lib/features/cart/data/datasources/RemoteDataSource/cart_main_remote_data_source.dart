import 'dart:convert';

import 'package:ecommerce_project/features/cart/data/models/cart_model.dart';
import 'package:http/http.dart' as http;

class CartMainList {
  Future<List<CartModel>> getMainCarts() async {
    final response = await http.get(
      Uri.parse('https://shopapi-0575.restdb.io/rest/cart'),
      headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

    if (response.statusCode == 200) {
      final userJson = json.decode(response.body);
        List<CartModel> list = userJson.map<CartModel>((e)=> CartModel.fromJson(e)).toList();
      return list;
    } else {
      throw Exception('Failed to load');
    }
  }
}