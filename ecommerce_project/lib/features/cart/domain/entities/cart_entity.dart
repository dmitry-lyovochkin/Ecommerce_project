import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class CartEntity extends Equatable{
  final int id;
  final String delivery;
  final int total;
  final List<BasketEntity> basket;

  const CartEntity(
    @required this.id, 
    @required this.delivery, 
    @required this.total, 
    @required this.basket
  );

  @override
  List<Object?> get props => [id, delivery, total, basket];
}


class BasketEntity{
  final int id;
  final String images;
  final int price;
  final String title;

  const BasketEntity(
    this.id, 
    this.images, 
    this.price, 
    this.title
  );
}