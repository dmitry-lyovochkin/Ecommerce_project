// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCartItems _$GetCartItemsFromJson(Map<String, dynamic> json) => GetCartItems(
      id: json['id'] as int,
      delivery: json['delivery'] as String,
      total: json['total'] as int,
      basket: (json['basket'] as List<dynamic>)
          .map((e) => Basket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetCartItemsToJson(GetCartItems instance) =>
    <String, dynamic>{
      'id': instance.id,
      'delivery': instance.delivery,
      'total': instance.total,
      'basket': instance.basket,
    };