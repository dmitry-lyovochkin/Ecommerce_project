// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartModel _$CartModelFromJson(Map<String, dynamic> json) => CartModel(
      id: json['id'],
      delivery: json['delivery'],
      total: json['total'],
      basket: (json['basket'] as List<dynamic>?)
          ?.map((e) => BasketModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CartModelToJson(CartModel instance) => <String, dynamic>{
      'id': instance.id,
      'delivery': instance.delivery,
      'total': instance.total,
      'basket': instance.basket,
    };
