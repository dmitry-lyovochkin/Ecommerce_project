// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Homestore _$HomestoreFromJson(Map<String, dynamic> json) => Homestore(
      id: json['id'] as int,
      isnew: json['isnew'] as bool,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      picture: json['picture'] as String,
      isbuy: json['isbuy'] as bool,
    );

Map<String, dynamic> _$HomestoreToJson(Homestore instance) => <String, dynamic>{
      'id': instance.id,
      'isnew': instance.isnew,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.picture,
      'isbuy': instance.isbuy,
    };
