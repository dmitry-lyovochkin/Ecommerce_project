import 'package:ecommerce_project/features/data/datasources/RemoteDataSource/cart_remote_data_source.dart';
import 'package:ecommerce_project/features/data/models/cart_model.dart';

class CartRepository {
  final CartList _cartProvider = CartList();
  Future<List<Basket>> getAllCart() => _cartProvider.getCarts();
}