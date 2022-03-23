import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'basket_entity.g.dart';

// @JsonSerializable()
class BasketEntity extends Equatable{
  final int id;
  final String images;
  final int price;
  final String title;

  const BasketEntity({
    required this.id, 
    required this.images, 
    required this.price, 
    required this.title
  });

  @override
  List<Object?> get props => [id, images, price, title];
}