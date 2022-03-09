import 'package:ecommerce_project/features/cart/data/datasources/RemoteDataSource/cart_main_remote_data_source.dart';
import 'package:ecommerce_project/features/cart/data/models/cart_model.dart';

class CartRepository {
  final CartMainList _cartProvider = CartMainList();
  Future<GetCartItems> getAllCart() => _cartProvider.getMainCarts();
}