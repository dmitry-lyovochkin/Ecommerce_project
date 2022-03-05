import 'package:equatable/equatable.dart';

import 'package:ecommerce_project/features/data/models/cart_model.dart';

abstract class CartState extends Equatable  {
  const CartState();
}


class CartLoadingState extends CartState {

  @override
  List<Object?> get props => [];
}

class CartLoadedState extends CartState {
  List<Basket> loadedCart;
  int finalPrice;   
  CartLoadedState({
    required this.loadedCart,
    required this.finalPrice,
  });


  @override
  List<Object?> get props => [loadedCart, finalPrice];
}

class CartErrorState extends CartState {

  @override
  List<Object?> get props => throw UnimplementedError();
}



class CounterState extends CartState {
  int counterValue;
  CounterState({
    required this.counterValue,
  });


  @override
  List<Object?> get props => [];
}
