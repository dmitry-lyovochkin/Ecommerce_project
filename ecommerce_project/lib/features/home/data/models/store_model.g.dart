// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreModel _$StoreModelFromJson(Map<String, dynamic> json) => StoreModel(
      homestore: (json['homestore'] as List<dynamic>)
          .map((e) => HomestoreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestseller: (json['bestseller'] as List<dynamic>)
          .map((e) => BestsellerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StoreModelToJson(StoreModel instance) =>
    <String, dynamic>{
      'homestore': instance.homestore,
      'bestseller': instance.bestseller,
    };
