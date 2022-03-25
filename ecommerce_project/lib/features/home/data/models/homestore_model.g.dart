// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homestore_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomestoreModel _$HomestoreModelFromJson(Map<String, dynamic> json) =>
    HomestoreModel(
      id: json['id'],
      isNew: json['isNew'],
      title: json['title'],
      subtitle: json['subtitle'],
      picture: json['picture'],
      isBuy: json['isBuy'],
    );

Map<String, dynamic> _$HomestoreModelToJson(HomestoreModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isNew': instance.isNew,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.picture,
      'isBuy': instance.isBuy,
    };
