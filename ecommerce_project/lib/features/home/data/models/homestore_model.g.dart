// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homestore_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeStoreModel _$HomeStoreModelFromJson(Map<String, dynamic> json) =>
    HomeStoreModel(
      id: json['id'] as int?,
      isNew: json['is_new'] as bool?,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      picture: json['picture'] as String?,
      isBuy: json['is_buy'] as bool?,
    );

Map<String, dynamic> _$HomeStoreModelToJson(HomeStoreModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_new': instance.isNew,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.picture,
      'is_buy': instance.isBuy,
    };
