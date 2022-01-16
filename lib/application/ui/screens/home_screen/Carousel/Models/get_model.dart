import 'package:json_annotation/json_annotation.dart';

part 'get_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Picture {
  final int id;
  final String title;
  final String subtitle;
  final List<Picture> picture;
  final bool is_new;
  final bool is_buy;

  Picture({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.picture,
    required this.is_new,
    required this.is_buy,
  });

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);

  Map<String, dynamic> toJson() => _$PictureToJson(this);
}
