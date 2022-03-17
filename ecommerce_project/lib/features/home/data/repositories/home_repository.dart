import 'package:ecommerce_project/features/home/data/datasources/RemoteDataSource/homestore_remote_data_source.dart';
import 'package:ecommerce_project/features/home/data/models/homestore_model.dart';

class HomeStoreRepository {
  final HomeStoreList _homeStoreProvider = HomeStoreList();
  Future<List<HomestoreModel>> getHomeStoreList() => _homeStoreProvider.getPostsHomeStore();
}