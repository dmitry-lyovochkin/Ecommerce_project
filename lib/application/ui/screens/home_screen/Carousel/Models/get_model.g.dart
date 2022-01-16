// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Picture _$PictureFromJson(Map<String, dynamic> json) => Picture(
      id: json['id'] as int,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      picture: (json['picture'] as List<dynamic>)
          .map((e) => Picture.fromJson(e as Map<String, dynamic>))
          .toList(),
      is_new: json['is_new'] as bool,
      is_buy: json['is_buy'] as bool,
    );

Map<String, dynamic> _$PictureToJson(Picture instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.picture.map((e) => e.toJson()).toList(),
      'is_new': instance.is_new,
      'is_buy': instance.is_buy,
    };
