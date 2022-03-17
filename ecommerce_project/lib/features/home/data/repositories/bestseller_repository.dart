import 'package:ecommerce_project/features/home/data/datasources/RemoteDataSource/bestseller_remote_data_source.dart';
import 'package:ecommerce_project/features/home/data/models/bestseller_model.dart';

class BestSellerRepository {
  final BestSellerApi _bestSellerProvider = BestSellerApi();
  Future<List<BestsellerModel>> getBestSellerList() => _bestSellerProvider.getBestSeller();
}