import 'package:bloc/bloc.dart';
import 'package:ecommerce_project/features/cart/data/repositories/cart_repository.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_event.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_state.dart';
import 'package:ecommerce_project/features/cart/data/repositories/basket_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_project/features/cart/data/models/cart_model.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final BasketRepository basketRepository;
  final CartRepository cartRepository;

  CartBloc(this.basketRepository, this.cartRepository) : super(CartLoadingState()) {
    on<CartLoadEvent>((event, emit)async {
      emit(CartLoadingState());
        try {
          final List<Basket> _loadedBasketList = await basketRepository.getAllBasket();
          int finalPrice = 0;
          _loadedBasketList.forEach((element) {
            finalPrice += element.price;
          });
          final GetCartItems _loadedCartList = await cartRepository.getAllCart();
          emit(CartLoadedState(loadedBasket: _loadedBasketList, finalPrice: finalPrice, loadedCart: _loadedCartList));
        } catch (_) {
          emit(CartErrorState());
        }
    });
  }
}

class CounterObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}


