// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bestseller_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BestsellerModel _$BestsellerModelFromJson(Map<String, dynamic> json) =>
    BestsellerModel(
      id: json['id'],
      isFavorites: json['isFavorites'],
      title: json['title'],
      priceWithoutDiscount: json['priceWithoutDiscount'],
      discountPrice: json['discountPrice'],
      picture: json['picture'],
    );

Map<String, dynamic> _$BestsellerModelToJson(BestsellerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isFavorites': instance.isFavorites,
      'title': instance.title,
      'priceWithoutDiscount': instance.priceWithoutDiscount,
      'discountPrice': instance.discountPrice,
      'picture': instance.picture,
    };
