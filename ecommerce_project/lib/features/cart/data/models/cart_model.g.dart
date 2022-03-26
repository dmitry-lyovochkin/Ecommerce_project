// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartModel _$CartModelFromJson(Map<String, dynamic> json) => CartModel(
      basket: (json['basket'] as List<dynamic>?)
          ?.map((e) => BasketModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      delivery: json['delivery'],
      id: json['id'],
      total: json['total'],
    );

Map<String, dynamic> _$CartModelToJson(CartModel instance) => <String, dynamic>{
      'basket': instance.basket,
      'delivery': instance.delivery,
      'id': instance.id,
      'total': instance.total,
    };
