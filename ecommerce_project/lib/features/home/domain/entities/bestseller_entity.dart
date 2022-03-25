import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'bestseller_entity.g.dart';

// @JsonSerializable()
class BestsellerEntity extends Equatable{
  final int id;
  final bool isFavorites;
  final String title;
  final int priceWithoutDiscount;
  final int discountPrice;
  final String picture;
  
  const BestsellerEntity({
    required this.id,
    required this.isFavorites,
    required this.title,
    required this.priceWithoutDiscount,
    required this.discountPrice,
    required this.picture,
  });

  @override
  List<Object?> get props => [id, isFavorites, title, priceWithoutDiscount, discountPrice, picture];
  }