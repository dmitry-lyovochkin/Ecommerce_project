import 'dart:convert';
import 'package:ecommerce_project/core/error/exception.dart';
import 'package:ecommerce_project/core/utils/constants.dart';
import 'package:ecommerce_project/features/cart/data/models/cart_model.dart';
import 'package:http/http.dart' as http;

abstract class CartRemoteDataSource {
  Future<List<CartModel>> getCarts();
  Future<List<CartModel>> getBaskets(); 
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final http.Client client;
 
  CartRemoteDataSourceImpl({required this.client});

  @override
  Future<List<CartModel>> getCarts() => _getCartFromUrl(cartUrl);
  
  @override
  Future<List<CartModel>> getBaskets() => _getCartFromUrl(cartUrl); 
  
  Future<List<CartModel>> _getCartFromUrl(String url) async {
    final response = await client.get(
      Uri.parse(url),
    );
    
    if (response.statusCode == 200) {
      final jsonCart = json.decode(response.body) as Map<String, dynamic>;
      List<CartModel> list = [];
      CartModel resposse = CartModel.fromJson(jsonCart);
      list.add(resposse);
      return list;
    } else {
      throw ServerException();
    }
  }
}
