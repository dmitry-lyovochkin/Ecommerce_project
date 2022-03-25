import 'package:ecommerce_project/features/home/domain/entities/homestore_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'homestore_model.g.dart';

@JsonSerializable()
class HomestoreModel extends HomestoreEntity{
  const HomestoreModel({
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

  Map<String, dynamic> toJson() => _$HomestoreModelToJson(this);
  factory HomestoreModel.fromJson(Map<String, dynamic> json) => _$HomestoreModelFromJson(json);
}
 