// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bestseller_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BestsellerModel _$BestsellerModelFromJson(Map<String, dynamic> json) =>
    BestsellerModel(
      id: json['id'],
      isfavorites: json['isfavorites'],
      title: json['title'],
      pricewithoutdiscount: json['pricewithoutdiscount'],
      discountprice: json['discountprice'],
      picture: json['picture'],
    );

Map<String, dynamic> _$BestsellerModelToJson(BestsellerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isfavorites': instance.isfavorites,
      'title': instance.title,
      'pricewithoutdiscount': instance.pricewithoutdiscount,
      'discountprice': instance.discountprice,
      'picture': instance.picture,
    };
