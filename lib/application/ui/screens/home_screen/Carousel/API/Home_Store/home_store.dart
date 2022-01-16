import 'package:json_annotation/json_annotation.dart';

part 'home_store.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Homestore {
  final int id;
  final bool isnew;
  final String title;
  final String subtitle;
  final String picture;
  final bool isbuy;
  
  Homestore(
    {
    required this.id,
    required this.isnew,
    required this.title,
    required this.subtitle,
    required this.picture,
    required this.isbuy,
    }
 );

 factory Homestore.fromJson(Map<String, dynamic> json) =>
      _$HomestoreFromJson(json);

  Map<String, dynamic> toJson() => _$HomestoreToJson(this);
}
