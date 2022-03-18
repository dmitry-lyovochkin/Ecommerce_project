import 'dart:convert';

import 'package:ecommerce_project/core/error/exception.dart';
import 'package:ecommerce_project/features/cart/data/models/basket_model.dart';
import 'package:ecommerce_project/features/cart/data/models/cart_model.dart';
import 'package:http/http.dart' as http;

abstract class CartRemoteDataSource {
  Future<List<CartModel>> getAllCarts(String delivery);
  Future<List<CartModel>> getAllBaskets(String query); /* ? */
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final http.Client client;

  CartRemoteDataSourceImpl({required this.client});

  @override
  Future<List<CartModel>> getAllCarts(String delivery) => _getCartFromUrl('https://shopapi-0575.restdb.io/rest/cart');
  

  @override
  Future<List<CartModel>> getAllBaskets(String query) => _getCartFromUrl('https://shopapi-0575.restdb.io/rest/cart'); 
  
  
  Future<List<CartModel>> _getCartFromUrl(String url) async {
    print(url);
    final response = await client.get(Uri.parse(url),
    headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

    if (response.statusCode == 200) {
      final carts = json.decode(response.body);
      return (carts['basket'] as List).map((e) => CartModel.fromJson(e)).toList();
    } else {
      throw ServerException();
    }
  }
}
