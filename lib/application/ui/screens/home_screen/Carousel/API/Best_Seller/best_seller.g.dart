// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_seller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bestseller _$BestsellerFromJson(Map<String, dynamic> json) => Bestseller(
      id: json['id'] as int,
      isfavorites: json['isfavorites'] as bool,
      title: json['title'] as String,
      pricewithoutdiscount: json['pricewithoutdiscount'] as int,
      discountprice: json['discountprice'] as int,
      picture: json['picture'] as String,
    );

Map<String, dynamic> _$BestsellerToJson(Bestseller instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isfavorites': instance.isfavorites,
      'title': instance.title,
      'pricewithoutdiscount': instance.pricewithoutdiscount,
      'discountprice': instance.discountprice,
      'picture': instance.picture,
    };
