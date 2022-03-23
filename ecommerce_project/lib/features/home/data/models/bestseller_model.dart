import 'package:ecommerce_project/features/home/domain/entities/bestseller_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bestseller_model.g.dart';

@JsonSerializable()
class BestsellerModel extends BestsellerEntity{
  const BestsellerModel({
    required id,
    required isfavorites,
    required title,
    required pricewithoutdiscount,
    required discountprice,
    required picture,
  }) : super(
    id: id,
    isfavorites: isfavorites,
    title: title,
    pricewithoutdiscount: pricewithoutdiscount,
    discountprice: discountprice,
    picture: picture
  );

  Map<String, dynamic> toJson() => _$BestsellerModelToJson(this);
  factory BestsellerModel.fromJson(Map<String, dynamic> json) => _$BestsellerModelFromJson(json);
}

