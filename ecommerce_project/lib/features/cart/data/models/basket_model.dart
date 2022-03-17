import 'package:json_annotation/json_annotation.dart';

part 'basket_model.g.dart';

@JsonSerializable()
class BasketModel {
  final int id;
  final String images;
  final int price;
  final String title;

  BasketModel({
    required this.id,
    required this.images,
    required this.price,
    required this.title,
  });

factory BasketModel.fromJson(Map<String, dynamic> json) => _$BasketModelFromJson(json);

Map<String, dynamic> toJson() => _$BasketModelToJson(this);

}

