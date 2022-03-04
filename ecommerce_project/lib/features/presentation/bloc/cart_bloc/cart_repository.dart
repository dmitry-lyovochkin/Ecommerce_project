import 'package:ecommerce_project/application/services/API/http_get.dart';
import 'package:ecommerce_project/features/data/models/cart_model.dart';

class CartRepository {
  final CartList _cartProvider = CartList();
  Future<List<Basket>> getAllCart() => _cartProvider.getCarts();
}