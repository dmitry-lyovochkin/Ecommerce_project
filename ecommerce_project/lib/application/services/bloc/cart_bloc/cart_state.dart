import 'package:ecommerce_project/application/services/API/model_cart.dart';

abstract class CartState {
}


class CartLoadingState extends CartState {}

class CartLoadedState extends CartState {
  List<Basket> loadedCart;
  CartLoadedState({required this.loadedCart});
}

class CartErrorState extends CartState {}



class CounterState extends CartState{
  int counterValue;

  CounterState({required this.counterValue});
}
class CounterInitial extends CounterState {
  CounterInitial({required int counterValue}) : super(counterValue: 0);

}





class CartMainLoadingState extends CartState {}

class CartMainLoadedState extends CartState {
  List<GetCartItems> loadedMainCart;
  CartMainLoadedState({required this.loadedMainCart});
}

class CartMainErrorState extends CartState {}