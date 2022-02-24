import 'package:equatable/equatable.dart';

import 'package:ecommerce_project/application/services/API/model_cart.dart';

abstract class CartState extends Equatable  {
  const CartState();
}


class CartLoadingState extends CartState {

  @override
  List<Object?> get props => throw UnimplementedError();
}

class CartLoadedState extends CartState {
  List<Basket> loadedCart;
  int finalPrice;   
  CartLoadedState({
    required this.loadedCart,
    required this.finalPrice,
  });


  @override
  List<Object?> get props => throw UnimplementedError();
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
  List<Object?> get props => throw UnimplementedError();
}

// class CartMainLoadingState extends CartState {

//   @override
//   List<Object?> get props => throw UnimplementedError();
// }

// class CartMainLoadedState extends CartState {
//   List<GetCartItems> loadedMainCart;
//   CartMainLoadedState({required this.loadedMainCart});

//   @override
//   List<Object?> get props => throw UnimplementedError();
// }

// class CartMainErrorState extends CartState {

//   @override
//   List<Object?> get props => throw UnimplementedError();
// }