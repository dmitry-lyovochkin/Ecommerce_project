import 'package:ecommerce_project/features/home/domain/entities/bestseller_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bestseller_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class BestSellerModel extends BestSellerEntity{
  const BestSellerModel({
    required int? id,
    required bool? isFavorites,
    required String? title,
    required int? priceWithoutDiscount,
    required int? discountPrice,
    required String? picture,
  }) : super(
    id: id,
    isFavorites: isFavorites,
    title: title,
    priceWithoutDiscount: priceWithoutDiscount,
    discountPrice: discountPrice,
    picture: picture
  );

  Map<String, dynamic> toJson() => _$BestSellerModelToJson(this);
  factory BestSellerModel.fromJson(Map<String, dynamic> json) => _$BestSellerModelFromJson(json);
}

