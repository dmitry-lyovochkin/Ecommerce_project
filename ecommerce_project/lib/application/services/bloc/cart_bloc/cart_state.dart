import 'package:ecommerce_project/application/services/API/model_cart.dart';

abstract class CartState {}

// class DetailsEmptyState extends DetailsState {}

class CartLoadingState extends CartState {}

class CartLoadedState extends CartState {
  List<Basket> loadedCart;
  CartLoadedState({required this.loadedCart});
}

class CartErrorState extends CartState {}