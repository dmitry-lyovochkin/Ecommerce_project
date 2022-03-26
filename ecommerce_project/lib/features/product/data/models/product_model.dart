import 'package:ecommerce_project/features/product/domain/entities/product_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel extends ProductEntity{
  const ProductModel({
    required cPU,
    required camera,
    required List<String> capacity,
    required List<String> color,
    required id,
    required List<String> images,
    required isFavorites,
    required price,
    required rating,
    required sd,
    required ssd,
    required title,
  }
  ) : super(
    cPU: cPU,
    camera: camera,
    capacity: capacity,
    color: color,
    id: id,
    images: images,
    isFavorites: isFavorites,
    price: price,
    rating: rating,
    sd: sd,
    ssd: ssd,
    title: title,
  );

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}