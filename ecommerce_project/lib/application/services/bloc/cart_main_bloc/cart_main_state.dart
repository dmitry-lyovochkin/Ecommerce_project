import 'package:ecommerce_project/application/services/API/model_cart.dart';

abstract class CartMainState {}

// class DetailsEmptyState extends DetailsState {}

class CartMainLoadingState extends CartMainState {}

class CartMainLoadedState extends CartMainState {
  List<GetCartItems> loadedMainCart;
  CartMainLoadedState({required this.loadedMainCart});
}

class CartMainErrorState extends CartMainState {}