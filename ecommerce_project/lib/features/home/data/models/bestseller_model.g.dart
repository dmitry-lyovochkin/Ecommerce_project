// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bestseller_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BestSellerModel _$BestSellerModelFromJson(Map<String, dynamic> json) =>
    BestSellerModel(
      id: json['id'],
      isFavorites: json['isFavorites'],
      title: json['title'],
      priceWithoutDiscount: json['priceWithoutDiscount'],
      discountPrice: json['discountPrice'],
      picture: json['picture'],
    );

Map<String, dynamic> _$BestSellerModelToJson(BestSellerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isFavorites': instance.isFavorites,
      'title': instance.title,
      'priceWithoutDiscount': instance.priceWithoutDiscount,
      'discountPrice': instance.discountPrice,
      'picture': instance.picture,
    };
