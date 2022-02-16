import 'package:ecommerce_project/application/services/API/http_get.dart';
import 'package:ecommerce_project/application/services/API/model_cart.dart';
import 'package:ecommerce_project/application/services/API/model_details.dart';

class CartRepository {
  final CartList _cartProvider = CartList();
  Future<List<GetCartItems>> getAllCart() => _cartProvider.getCarts();
}
// обертка над запросом.Теперь всё взамодействие будет чеоез getAllDetails()