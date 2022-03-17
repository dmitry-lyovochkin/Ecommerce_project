import 'package:ecommerce_project/features/cart/data/datasources/RemoteDataSource/basket_remote_data_source.dart';
import 'package:ecommerce_project/features/cart/data/models/basket_model.dart';

class BasketRepository {
  final BasketList _basketProvider = BasketList();
  Future<List<BasketModel>> getAllBasket() => _basketProvider.getBasket();
}