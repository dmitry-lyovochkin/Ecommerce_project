import 'package:ecommerce_project/features/cart/data/models/basket_model.dart';
import 'package:equatable/equatable.dart';

// part 'cart_entity.g.dart';

// @JsonSerializable()
class CartEntity extends Equatable{
  final String? id;
  final String? delivery;
  final int? total;
  final List<BasketModel>? basket;

  const CartEntity({
    required this.id, 
    required this.delivery, 
    required this.total, 
    required this.basket, 
  });

  @override
  List<Object?> get props => [id, delivery, total, basket];

  // factory CartEntity.fromJson(Map<String, dynamic> json) => _$CartEntityFromJson(json);
  // Map<String, dynamic> toJson() => _$CartEntityToJson(this);
}
