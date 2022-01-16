// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopApi _$ShopApiFromJson(Map<String, dynamic> json) => ShopApi(
      id: json['id'] as String,
      homestore: (json['homestore'] as List<dynamic>)
          .map((e) => Homestore.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestseller: (json['bestseller'] as List<dynamic>)
          .map((e) => Bestseller.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ShopApiToJson(ShopApi instance) => <String, dynamic>{
      'id': instance.id,
      'homestore': instance.homestore.map((e) => e.toJson()).toList(),
      'bestseller': instance.bestseller.map((e) => e.toJson()).toList(),
    };
