import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'homestore_entity.g.dart';

// @JsonSerializable()
class HomestoreEntity extends Equatable{
  final int id;
  final bool isNew;
  final String title;
  final String subtitle;
  final String picture;
  final bool isBuy;
  
  const HomestoreEntity({
    required this.id,
    required this.isNew,
    required this.title,
    required this.subtitle,
    required this.picture,
    required this.isBuy,
  });

  @override
  List<Object?> get props => [id, isNew, title, subtitle, picture, isBuy];
}