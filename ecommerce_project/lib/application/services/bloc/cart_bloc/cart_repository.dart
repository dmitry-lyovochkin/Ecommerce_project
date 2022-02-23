import 'package:ecommerce_project/application/services/API/http_get.dart';
import 'package:ecommerce_project/application/services/API/model_cart.dart';

class CartRepository {
  final CartList _cartProvider = CartList();
  Future<List<Basket>> getAllCart() => _cartProvider.getCarts();
}