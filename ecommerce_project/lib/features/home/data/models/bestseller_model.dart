import 'package:ecommerce_project/features/home/domain/entities/bestseller_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bestseller_model.g.dart';

@JsonSerializable()
class BestSellerModel extends BestSellerEntity{
  const BestSellerModel({
    required id,
    required isFavorites,
    required title,
    required priceWithoutDiscount,
    required discountPrice,
    required picture,
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

