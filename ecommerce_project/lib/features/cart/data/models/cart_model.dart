import 'package:ecommerce_project/features/cart/data/models/basket_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart_model.g.dart';

@JsonSerializable()
class Cart {
  final int? id;
  final String? delivery;
  final int? total;
  final List<Basket>? basket;
  
  Cart({
    required this.id,
    required this.delivery,
    required this.total,
    required this.basket,
  });

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  Map<String, dynamic> toJson() => _$CartToJson(this);
}
