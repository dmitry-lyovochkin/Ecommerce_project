import 'package:json_annotation/json_annotation.dart';

part 'basket_model.g.dart';

@JsonSerializable()
class Basket {
  final int id;
  final String images;
  final int price;
  final String title;

  Basket({
    required this.id,
    required this.images,
    required this.price,
    required this.title,
  });

factory Basket.fromJson(Map<String, dynamic> json) => _$BasketFromJson(json);

Map<String, dynamic> toJson() => _$BasketToJson(this);

}

