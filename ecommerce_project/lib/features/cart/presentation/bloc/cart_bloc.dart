import 'package:bloc/bloc.dart';
import 'package:ecommerce_project/features/cart/domain/entities/cart_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_project/features/cart/domain/usecases/get_all_carts.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_event.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetAllCartsUseCase getAllCartUseCase;

  CartBloc({required this.getAllCartUseCase}) : super(CartLoadingState()) {
    on<CartLoadEvent>((event, emit) async {
      emit(CartLoadingState());
      List<BasketEntity> _loadedBasketList = [];
      final _loadedCartList = await getAllCartUseCase();
      List<CartEntity> _cartList = [];

// перестала работать реализация
      // int finalPrice = 0;
      // _loadedBasketList.forEach((element) {
      //   finalPrice += element.price;
      // });
      
      _loadedCartList.fold((l) => emit(const CartErrorState(message: 'error')), 
        (r) => _cartList.addAll(r));
      _loadedBasketList = _cartList.map<List<BasketEntity>>((e) => e.basket!).expand((element) => element).toList();
      emit(CartLoadedState(loadedBasket: _loadedBasketList, loadedCart: _cartList,));
    });
  }
}




