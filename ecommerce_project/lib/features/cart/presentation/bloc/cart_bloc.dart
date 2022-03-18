import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_project/features/cart/domain/usecases/get_all_carts.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_event.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  // final BasketRepository basketRepository;
  // final CartRepository getCartItemsRepository;
  final GetAllCartsUseCase getAllCartUseCase;

  CartBloc({required this.getAllCartUseCase}) : super(CartLoadingState()) {
    on<CartLoadEvent>((event, emit)async {
      emit(CartLoadingState());
      final _loadedCartList = await getAllCartUseCase();
      int finalPrice = 0;
      _loadedCartList.fold((l) => emit(const CartErrorState(message: 'error')), 
        (r) => emit(CartLoadedState(loadedCart: r, finalPrice: 5000)));
    });
  }
}




