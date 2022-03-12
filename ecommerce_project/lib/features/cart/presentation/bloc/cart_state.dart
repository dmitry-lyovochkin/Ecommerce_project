import 'package:ecommerce_project/features/cart/data/models/basket_model.dart';
import 'package:equatable/equatable.dart';

import 'package:ecommerce_project/features/cart/data/models/cart_model.dart';

abstract class CartState extends Equatable  {
  const CartState();
}


class CartLoadingState extends CartState {

  @override
  List<Object?> get props => [];
}

class CartLoadedState extends CartState {
  final List<Basket> loadedBasket;
  final List<GetCartItems> loadedGetCartItems;
  final int finalPrice;   
  const CartLoadedState({
    required this.loadedBasket,
    required this.loadedGetCartItems,
    required this.finalPrice,
  });


  @override
  List<Object?> get props => [loadedBasket, finalPrice, loadedGetCartItems];
}

class CartErrorState extends CartState {

  @override
  List<Object?> get props => throw UnimplementedError();
}



class CounterState extends CartState {
  final int counterValue;
  const CounterState({
    required this.counterValue,
  });


  @override
  List<Object?> get props => [];
}
