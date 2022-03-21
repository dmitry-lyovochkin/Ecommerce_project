import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:ecommerce_project/core/error/failure.dart';
import 'package:ecommerce_project/features/cart/data/models/basket_model.dart';
import 'package:ecommerce_project/features/cart/data/models/cart_model.dart';
import 'package:ecommerce_project/features/cart/domain/entities/cart_entity.dart';

abstract class CartState extends Equatable  {
  const CartState();

  @override
  List<Object?> get props => [];
}


class CartLoadingState extends CartState {

  @override
  List<Object?> get props => [];
}

class CartLoadedState extends CartState {
  // final List<BasketModel> loadedBasket;
  final List<CartEntity> loadedCart;
  final List<BasketEntity> loadedBasket;

  const CartLoadedState({
    required this.loadedCart,
    required this.loadedBasket,
  });


  @override
  List<Object?> get props => [loadedBasket, loadedCart];
}

class CartErrorState extends CartState {
  final String message;

  const CartErrorState({required this.message});
  
  @override
  List<Object?> get props => [message];
}

