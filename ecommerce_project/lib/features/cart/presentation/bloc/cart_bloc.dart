import 'package:bloc/bloc.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_event.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_state.dart';
import 'package:ecommerce_project/features/cart/data/repositories/cart_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_project/features/cart/data/models/cart_model.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository cartRepository;

  CartBloc(this.cartRepository) : super(CartLoadingState()) {
    on<CartLoadEvent>((event, emit)async {
      emit(CartLoadingState());
        try {
          final List<Basket> _loadedCartList = await cartRepository.getAllCart();
          int finalPrice = 0;
          _loadedCartList.forEach((element) {
            finalPrice += element.price;
          });
          emit(CartLoadedState(loadedCart: _loadedCartList, finalPrice: finalPrice));
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


