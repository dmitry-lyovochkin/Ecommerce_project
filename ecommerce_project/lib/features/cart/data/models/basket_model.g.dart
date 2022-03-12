// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Basket _$BasketFromJson(Map<String, dynamic> json) => Basket(
      id: json['id'] as int,
      images: json['images'] as String,
      price: json['price'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$BasketToJson(Basket instance) => <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'price': instance.price,
      'title': instance.title,
    };
