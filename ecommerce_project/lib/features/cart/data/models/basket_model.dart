import 'package:ecommerce_project/features/cart/domain/entities/basket_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'basket_model.g.dart';

@JsonSerializable()
class BasketModel extends BasketEntity{
  const BasketModel({
    required int id,
    required String images,
    required int price,
    required String title,
  }) : super(
    id: id,
    images: images,
    price: price,
    title: title,
  );

factory BasketModel.fromJson(Map<String, dynamic> json) => _$BasketModelFromJson(json);
Map<String, dynamic> toJson() => _$BasketModelToJson(this);
}

