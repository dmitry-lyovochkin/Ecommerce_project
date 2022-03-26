import 'package:ecommerce_project/features/home/domain/entities/homestore_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'homestore_model.g.dart';

@JsonSerializable()
class HomeStoreModel extends HomeStoreEntity{
  const HomeStoreModel({
    required id,
    required isNew,
    required title,
    required subtitle,
    required picture,
    required isBuy,
  }) : super(
    id: id,
    isNew: isNew,
    title: title,
    subtitle: subtitle,
    picture: picture,
    isBuy: isBuy
  );

  Map<String, dynamic> toJson() => _$HomeStoreModelToJson(this);
  factory HomeStoreModel.fromJson(Map<String, dynamic> json) => _$HomeStoreModelFromJson(json);
}
 