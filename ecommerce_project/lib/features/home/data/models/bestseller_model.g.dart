// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bestseller_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BestSellerModel _$BestSellerModelFromJson(Map<String, dynamic> json) =>
    BestSellerModel(
      id: json['id'] as int?,
      isFavorites: json['is_favorites'] as bool?,
      title: json['title'] as String?,
      priceWithoutDiscount: json['price_without_discount'] as int?,
      discountPrice: json['discount_price'] as int?,
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$BestSellerModelToJson(BestSellerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_favorites': instance.isFavorites,
      'title': instance.title,
      'price_without_discount': instance.priceWithoutDiscount,
      'discount_price': instance.discountPrice,
      'picture': instance.picture,
    };
