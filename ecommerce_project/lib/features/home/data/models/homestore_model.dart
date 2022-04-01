import 'package:ecommerce_project/features/home/domain/entities/homestore_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'homestore_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class HomeStoreModel extends HomeStoreEntity{
  const HomeStoreModel({
    required int? id,
    required bool? isNew,
    required String? title,
    required String? subtitle,
    required String? picture,
    required bool? isBuy,
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
 