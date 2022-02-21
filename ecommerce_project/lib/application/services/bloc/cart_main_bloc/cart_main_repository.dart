import 'package:ecommerce_project/application/services/API/http_get.dart';
import 'package:ecommerce_project/application/services/API/model_cart.dart';

class CartMainRepository {
  final CartMainList _cartMainProvider = CartMainList();
  Future<List<GetCartItems>> getMainCart() => _cartMainProvider.getMainCarts();
}