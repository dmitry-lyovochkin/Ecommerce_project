import 'package:bloc/bloc.dart';
import 'package:ecommerce_project/features/cart/data/models/basket_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ecommerce_project/features/cart/data/models/cart_model.dart';
import 'package:ecommerce_project/features/cart/data/repositories/basket_repository.dart';
import 'package:ecommerce_project/features/cart/data/repositories/cart_repository.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_event.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final BasketRepository basketRepository;
  final CartRepository getCartItemsRepository;

  CartBloc(this.basketRepository, this.getCartItemsRepository) : super(CartLoadingState()) {
    on<CartLoadEvent>((event, emit)async {
      emit(CartLoadingState());
        try {
          final List<Basket> _loadedBasketList = await basketRepository.getAllBasket();
          final List<Cart> _loadedCartItemsList = await getCartItemsRepository.getAllCart();
          int finalPrice = 0;
          _loadedBasketList.forEach((element) {
            finalPrice += element.price;
          });
          emit(CartLoadedState(loadedBasket: _loadedBasketList, finalPrice: finalPrice, loadedCart: _loadedCartItemsList));
        } catch (event) {
          emit(CartErrorState());
        }
    });
  }
}




