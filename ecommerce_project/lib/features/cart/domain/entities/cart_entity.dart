import 'package:equatable/equatable.dart';

class CartEntity extends Equatable{
  final int? id;
  final String? delivery;
  final int? total;
  final List<BasketEntity>? basket;

  const CartEntity({
    required this.id, 
    required this.delivery, 
    required this.total, 
    required this.basket, 
  });

  @override
  List<Object?> get props => [id, delivery, total, basket];
}


class BasketEntity extends Equatable{
  final int id;
  final String images;
  final int price;
  final String title;

  const BasketEntity({
    required this.id, 
    required this.images, 
    required this.price, 
    required this.title
  });

  @override
  List<Object?> get props => [id, images, price, title];
}