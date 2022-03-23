import 'package:ecommerce_project/features/product/domain/entities/product_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel extends ProductEntity{
  const ProductModel({
    required id,
    required cpu,
    required camera,
    required isFavorites,
    required price,
    required rating,
    required sd,
    required ssd,
    required title,
    required List<String> images,
    required List<String> color,
    required List<String> capacity,
    }
  ) : super(
    id: id,
    cpu: cpu,
    camera: camera,
    isFavorites: isFavorites,
    price: price,
    rating: rating,
    sd: sd,
    ssd: ssd,
    title: title,
    images: images,
    color: color,
    capacity: capacity
  );

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}