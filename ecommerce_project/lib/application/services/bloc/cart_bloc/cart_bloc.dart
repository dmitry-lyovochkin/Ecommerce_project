import 'package:bloc/bloc.dart';
import 'package:ecommerce_project/application/services/API/model_cart.dart';
import 'package:ecommerce_project/application/services/bloc/cart_bloc/cart_repository.dart';
import 'package:ecommerce_project/application/services/bloc/cart_bloc/cart_event.dart';
import 'package:ecommerce_project/application/services/bloc/cart_bloc/cart_state.dart';
import 'package:ecommerce_project/application/services/bloc/cart_main_bloc/cart_main_bloc.dart';
import 'package:ecommerce_project/application/services/bloc/cart_main_bloc/cart_main_event.dart';
import 'package:ecommerce_project/application/services/bloc/cart_main_bloc/cart_main_repository.dart';
import 'package:ecommerce_project/application/services/bloc/cart_main_bloc/cart_main_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository cartRepository;
  
  CartBloc(this.cartRepository) : super(CartLoadingState()) {
    on<CartLoadEvent>((event, emit) async {
      emit(CartLoadingState());
      try {
        final List<Basket> _loadedCartList = await cartRepository.getAllCart();
        emit(CartLoadedState(loadedCart: _loadedCartList));
      } catch (_) {
        emit(CartErrorState());
      }
    });
  }
}
  

