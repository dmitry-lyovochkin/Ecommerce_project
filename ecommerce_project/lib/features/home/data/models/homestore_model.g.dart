// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homestore_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomestoreModel _$HomestoreModelFromJson(Map<String, dynamic> json) =>
    HomestoreModel(
      id: json['id'],
      isnew: json['isnew'],
      title: json['title'],
      subtitle: json['subtitle'],
      picture: json['picture'],
      isbuy: json['isbuy'],
    );

Map<String, dynamic> _$HomestoreModelToJson(HomestoreModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isnew': instance.isnew,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.picture,
      'isbuy': instance.isbuy,
    };
