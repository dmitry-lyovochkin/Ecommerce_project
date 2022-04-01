// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      cpu: json['CPU'] as String?,
      camera: json['camera'],
      capacity: (json['capacity'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      color:
          (json['color'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['id'],
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isFavorites: json['isFavorites'],
      price: json['price'],
      rating: json['rating'],
      sd: json['sd'],
      ssd: json['ssd'],
      title: json['title'],
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'camera': instance.camera,
      'capacity': instance.capacity,
      'color': instance.color,
      'id': instance.id,
      'images': instance.images,
      'isFavorites': instance.isFavorites,
      'price': instance.price,
      'rating': instance.rating,
      'sd': instance.sd,
      'ssd': instance.ssd,
      'title': instance.title,
      'CPU': instance.cpu,
    };
