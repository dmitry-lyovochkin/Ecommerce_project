import 'dart:convert';

import 'package:ecommerce_project/core/error/exception.dart';
import 'package:ecommerce_project/core/utils/constants.dart';
import 'package:ecommerce_project/features/product/data/models/product_model.dart';
import 'package:http/http.dart' as http;

abstract class ProductRemoteDataSource {
  Future<List<ProductModel>> getAllProducts();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final http.Client client;

  ProductRemoteDataSourceImpl({required this.client});

  @override
  Future<List<ProductModel>> getAllProducts() => _getProductFromUrl(productUrl);
  
  Future<List<ProductModel>> _getProductFromUrl(String url) async {
    final response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
     final jsonDetail = json.decode(response.body) as Map<String, dynamic>;
    //  print(jsonDetail.runtimeType);

      List<ProductModel> list = [];
      ProductModel resposse = ProductModel.fromJson(jsonDetail);
      list.add(resposse);
      return list;
    } else {
      throw ServerException();
    }
  }
}