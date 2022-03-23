// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'],
      cpu: json['cpu'],
      camera: json['camera'],
      isFavorites: json['isFavorites'],
      price: json['price'],
      rating: json['rating'],
      sd: json['sd'],
      ssd: json['ssd'],
      title: json['title'],
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      color: (json['color'] as List<dynamic>).map((e) => e as String).toList(),
      capacity:
          (json['capacity'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cpu': instance.cpu,
      'camera': instance.camera,
      'isFavorites': instance.isFavorites,
      'price': instance.price,
      'rating': instance.rating,
      'sd': instance.sd,
      'ssd': instance.ssd,
      'title': instance.title,
      'images': instance.images,
      'color': instance.color,
      'capacity': instance.capacity,
    };
