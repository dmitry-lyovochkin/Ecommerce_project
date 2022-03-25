import 'dart:convert';
import 'package:ecommerce_project/core/error/exception.dart';
import 'package:ecommerce_project/core/utils/constants.dart';
import 'package:ecommerce_project/features/home/data/models/store_model.dart';
import 'package:http/http.dart' as http;

abstract class HomeRemoteDataSource {
  Future<List<StoreModel>> getAllStore();
  Future<List<StoreModel>> getAllHomestore();
  Future<List<StoreModel>> getAllBestseller();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final http.Client client;

  HomeRemoteDataSourceImpl({required this.client});

  @override
  Future<List<StoreModel>> getAllBestseller() => _getHomeFromUrl(homeUrl);

  @override
  Future<List<StoreModel>> getAllHomestore() => _getHomeFromUrl(homeUrl);

  @override
  Future<List<StoreModel>> getAllStore() => _getHomeFromUrl(homeUrl);

  Future<List<StoreModel>> _getHomeFromUrl(String url) async {
    final response = await client.get(
      Uri.parse(url),
      // headers: apiKey
    );

    if (response.statusCode == 200) {
      final jsonHome = json.decode(response.body);
      List<StoreModel> list = jsonHome.map<StoreModel>((e) => StoreModel.fromJson(e)).toList();
      return list;
    } else {
      throw ServerException();
    }
  }
}
