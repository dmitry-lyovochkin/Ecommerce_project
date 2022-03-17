import 'package:ecommerce_project/features/cart/data/models/basket_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart_model.g.dart';

@JsonSerializable()
class CartModel {
  final int? id;
  final String? delivery;
  final int? total;
  final List<BasketModel>? basket;
  
  CartModel({
    required this.id,
    required this.delivery,
    required this.total,
    required this.basket,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartModelToJson(this);
}
