import 'package:ecommerce_project/features/product/data/datasources/RemoteDataSource/product_remote_data_source.dart';
import 'package:ecommerce_project/features/product/data/models/product_model.dart';

class ProductDetailsRepository {
  final ProductList _detailsProvider = ProductList();
  Future<List<ProductModel>> getAllDetails() => _detailsProvider.getProducts();
}