import 'package:ecommerce_project/features/cart/data/models/basket_model.dart';
import 'package:ecommerce_project/features/cart/domain/entities/cart_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart_model.g.dart';

@JsonSerializable()
class CartModel extends CartEntity{
  const CartModel({
    required id,
    required delivery, 
    required total,
    required List<BasketModel>? basket,
  }) : super(
    id: id,
    delivery: delivery,
    total: total,
    basket: basket,
  );

  factory CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);
  Map<String, dynamic> toJson() => _$CartModelToJson(this);
}
