import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'bestseller_entity.g.dart';

// @JsonSerializable()
class BestsellerEntity extends Equatable{
  final int id;
  final bool isfavorites;
  final String title;
  final int pricewithoutdiscount;
  final int discountprice;
  final String picture;
  
  const BestsellerEntity({
    required this.id,
    required this.isfavorites,
    required this.title,
    required this.pricewithoutdiscount,
    required this.discountprice,
    required this.picture,
  });

  @override
  List<Object?> get props => [id, isfavorites, title, pricewithoutdiscount, discountprice, picture];
  }