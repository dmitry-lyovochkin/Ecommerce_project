import 'dart:convert';
import 'package:ecommerce_project/features/cart/data/models/basket.model.dart';
import 'package:http/http.dart' as http;

class BasketList {
  Future<List<Basket>> getBasket() async {
    final response = await http.get(
      Uri.parse('https://shopapi-0575.restdb.io/rest/cart'),
      headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

    if (response.statusCode == 200) {
      final userJson = json.decode(response.body)[0];
      List<Basket> list = [];
        userJson['basket'].forEach((e)=> list.add(Basket.fromMap(e)));
      return list;
    } else {
      throw Exception('Failed to load');
    }
  }
}