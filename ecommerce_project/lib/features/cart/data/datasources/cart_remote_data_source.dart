import 'dart:convert';

import 'package:ecommerce_project/core/error/exception.dart';
import 'package:ecommerce_project/core/utils/constants.dart';
import 'package:ecommerce_project/features/cart/data/models/cart_model.dart';
import 'package:http/http.dart' as http;

abstract class CartRemoteDataSource {
  Future<List<CartModel>> getAllCarts();
  Future<List<CartModel>> getAllBaskets(); 
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final http.Client client;
 
  CartRemoteDataSourceImpl({required this.client});

  @override
  Future<List<CartModel>> getAllCarts() => _getCartFromUrl(cartUrl);
  
  @override
  Future<List<CartModel>> getAllBaskets() => _getCartFromUrl(cartUrl); 
  
  Future<List<CartModel>> _getCartFromUrl(String url) async {
    final response = await client.get(
      Uri.parse(url),
      headers: apiKey
    );

    if (response.statusCode == 200) {
      final jsonCarts = json.decode(response.body) as List<dynamic>;
      return jsonCarts.map((e) => CartModel.fromJson(e as Map<String, dynamic>)).toList();
    } else {
      throw ServerException();
    }
  }
}
