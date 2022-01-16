import 'package:json_annotation/json_annotation.dart';

part 'best_seller.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Bestseller {
  final int id;
  final bool isfavorites;
  final String title;
  final int pricewithoutdiscount;
  final int discountprice;
  final String picture;
  
  Bestseller({
    required this.id,
    required this.isfavorites,
    required this.title,
    required this.pricewithoutdiscount,
    required this.discountprice,
    required this.picture,
  });

  factory Bestseller.fromJson(Map<String, dynamic> json) =>
      _$BestsellerFromJson(json);

  Map<String, dynamic> toJson() => _$BestsellerToJson(this);
}
