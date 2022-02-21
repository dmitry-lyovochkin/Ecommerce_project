import 'package:bloc/bloc.dart';
import 'package:ecommerce_project/application/services/API/model_cart.dart';
import 'package:ecommerce_project/application/services/bloc/cart_bloc/cart_repository.dart';
import 'package:ecommerce_project/application/services/bloc/cart_bloc/cart_event.dart';
import 'package:ecommerce_project/application/services/bloc/cart_bloc/cart_state.dart';
import 'package:ecommerce_project/application/services/bloc/cart_main_bloc/cart_main_event.dart';
import 'package:ecommerce_project/application/services/bloc/cart_main_bloc/cart_main_repository.dart';
import 'package:ecommerce_project/application/services/bloc/cart_main_bloc/cart_main_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CartMainBloc extends Bloc<CartMainEvent, CartMainState> {
  final CartMainRepository cartMainRepository;
  
  CartMainBloc(this.cartMainRepository) : super(CartMainLoadingState()) {
    on<CartMainLoadEvent>((event, emit) async {
      emit(CartMainLoadingState());
      try {
        final List<GetCartItems> _loadedCartMainList = await cartMainRepository.getMainCart();
        emit(CartMainLoadedState(loadedMainCart: _loadedCartMainList));
      } catch (_) {
        emit(CartMainErrorState());
      }
    });
  }
}