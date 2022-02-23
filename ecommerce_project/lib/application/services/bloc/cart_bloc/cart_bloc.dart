import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ecommerce_project/application/services/API/model_cart.dart';
import 'package:ecommerce_project/application/services/bloc/cart_bloc/cart_event.dart';
import 'package:ecommerce_project/application/services/bloc/cart_bloc/cart_repository.dart';
import 'package:ecommerce_project/application/services/bloc/cart_bloc/cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository cartRepository;
  int counterValue =  0;
  
  CartBloc(this.cartRepository) : super(CartLoadingState()) {
    on<CartLoadEvent>(_getBasket);
    on<CartEvent>(_counter);
    // on<CartMainLoadEvent>(_getCartMain);
  }
  

  void _getBasket (event, emit) async {
    emit(CartLoadingState());
    try {
      final List<Basket> _loadedCartList = await cartRepository.getAllCart();
      emit(CartLoadedState(loadedCart: _loadedCartList));
    } catch (_) {
      emit(CartErrorState());
    }
  }

  void _counter (event, emit) {
    if (event is Increment) {
      emit(CounterState(counterValue: counterValue + 1));
    } else {
      if (counterValue > 0) {
      emit(CounterState(counterValue: counterValue - 1));
      }
    }
  }
  // void _getCartMain(event, emit) async {
  //     emit(CartMainLoadingState());
  //     try {
  //       final List<GetCartItems> _loadedCartMainList = await cartMainRepository.getMainCart();
  //       emit(CartMainLoadedState(loadedMainCart: _loadedCartMainList));
  //     } catch (_) {
  //       emit(CartMainErrorState());
  //     }
  //   }

}

// class CounterState extends CartState{
//   int counterValue;

//   CounterState({required this.counterValue});
// }
// class CounterInitial extends CounterState {
//   CounterInitial({required int counterValue}) : super(counterValue: 0);

// }


