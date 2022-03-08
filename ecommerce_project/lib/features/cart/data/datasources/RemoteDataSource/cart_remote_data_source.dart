import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ecommerce_project/features/cart/data/models/cart_model.dart';

class CartList {
  Future<List<Basket>> getCarts() async {
    final response = await http.get(
      Uri.parse('https://shopapi-0575.restdb.io/rest/cart'),
      headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

    if (response.statusCode == 200) {
      final List<dynamic> userJson = json.decode(response.body);
      List<Basket> list = [];
      userJson.map((json) {
        for (var i = 0; i < json['basket'].length; i++) {
          list.add(Basket.fromMap(json['basket'][i]));
        }
      }).toList();
      return list;
    } else {
      throw Exception('Failed to load');
    }
  }
}