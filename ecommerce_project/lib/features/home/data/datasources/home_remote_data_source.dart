import 'dart:convert';
import 'package:ecommerce_project/core/error/exception.dart';
import 'package:ecommerce_project/core/utils/constants.dart';
import 'package:ecommerce_project/features/home/data/models/store_model.dart';
import 'package:http/http.dart' as http;

abstract class HomeRemoteDataSource {
  Future<List<StoreModel>> getStore();
  Future<List<StoreModel>> getHomestore();
  Future<List<StoreModel>> getBestseller();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final http.Client client;

  HomeRemoteDataSourceImpl({required this.client});

  @override
  Future<List<StoreModel>> getBestseller() => _getHomeFromUrl(homeUrl);

  @override
  Future<List<StoreModel>> getHomestore() => _getHomeFromUrl(homeUrl);

  @override
  Future<List<StoreModel>> getStore() => _getHomeFromUrl(homeUrl);

  Future<List<StoreModel>> _getHomeFromUrl(String url) async {
    final response = await client.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
      final jsonHome = json.decode(response.body) as Map<String, dynamic>;
      List<StoreModel> list = [];
      StoreModel resposse = StoreModel.fromJson(jsonHome);
      list.add(resposse);
      return list;
    } else {
      throw ServerException();
    }
  }
}
