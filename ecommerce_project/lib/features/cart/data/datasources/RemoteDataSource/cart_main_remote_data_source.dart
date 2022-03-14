import 'dart:convert';

import 'package:ecommerce_project/features/cart/data/models/cart_model.dart';
import 'package:ecommerce_project/features/cart/data/repositories/cart_repository.dart';
import 'package:http/http.dart' as http;

// class CartMainList {
//   Future<GetCartItems> getMainCarts() async {
//     final response = await http.get(
//       Uri.parse('https://shopapi-0575.restdb.io/rest/cart'),
//       headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

//     if (response.statusCode == 200) {
//       return GetCartItems.fromJson(json.decode(response.body));
//     } else {
//       throw Exception('Failed to load');
//     }
//   }
// }
class CartMainList {
  Future<List<Cart>> getMainCarts() async {
    final response = await http.get(
      Uri.parse('https://shopapi-0575.restdb.io/rest/cart'),
      headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});
  try {
    if (response.statusCode == 200) {
      final userJson = json.decode(response.body);
      // List<Cart> list = [];
        List<Cart> list = userJson.map<Cart>((e)=> Cart.fromJson(e)).toList();
      return list;
    } else {
      throw Exception('Failed to load');
    }
    
  } catch (e, s){
    print("Обработка  $e");
    print("Стек1 $s");
    rethrow;
  }
  }
}