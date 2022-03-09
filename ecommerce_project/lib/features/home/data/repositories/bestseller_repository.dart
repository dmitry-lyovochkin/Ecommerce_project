import 'package:ecommerce_project/features/home/data/datasources/RemoteDataSource/bestseller_remote_data_source.dart';
import 'package:ecommerce_project/features/home/data/models/bestseller_model.dart';

class BestSellerRepository {
  final BestSellerList _bestSellerProvider = BestSellerList();
  Future<List<Bestseller>> getBestSellerList() => _bestSellerProvider.getPostBestSeller();
}