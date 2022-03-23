import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'homestore_entity.g.dart';

// @JsonSerializable()
class HomestoreEntity extends Equatable{
  final int id;
  final bool isnew;
  final String title;
  final String subtitle;
  final String picture;
  final bool isbuy;
  
  const HomestoreEntity({
    required this.id,
    required this.isnew,
    required this.title,
    required this.subtitle,
    required this.picture,
    required this.isbuy,
  });

  @override
  List<Object?> get props => [id, isnew, title, subtitle, picture, isbuy];
}