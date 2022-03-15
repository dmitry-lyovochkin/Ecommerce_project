import 'dart:convert';

class Homestore {
  final int id;
  final bool isnew;
  final String title;
  final String subtitle;
  final String picture;
  final bool isbuy;
  
  Homestore({
    required this.id,
    required this.isnew,
    required this.title,
    required this.subtitle,
    required this.picture,
    required this.isbuy,
  });

  Homestore copyWith({
    int? id,
    bool? isnew,
    String? title,
    String? subtitle,
    String? picture,
    bool? isbuy,
  }) {
    return Homestore(
      id: id ?? this.id,
      isnew: isnew ?? this.isnew,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      picture: picture ?? this.picture,
      isbuy: isbuy ?? this.isbuy,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'is_new': isnew,
      'title': title,
      'subtitle': subtitle,
      'picture': picture,
      'is_buy': isbuy,
    };
  }

  factory Homestore.fromMap(Map<String, dynamic> map) {
    return Homestore(
      id: map['id']?.toInt() ?? 0,
      isnew: map['is_new'] ?? false,
      title: map['title'] ?? '',
      subtitle: map['subtitle'] ?? '',
      picture: map['picture'] ?? '',
      isbuy: map['is_buy'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Homestore.fromJson(String source) => Homestore.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Home_store(id: $id, is_new: $isnew, title: $title, subtitle: $subtitle, picture: $picture, is_buy: $isbuy)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Homestore &&
      other.id == id &&
      other.isnew == isnew &&
      other.title == title &&
      other.subtitle == subtitle &&
      other.picture == picture &&
      other.isbuy == isbuy;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      isnew.hashCode ^
      title.hashCode ^
      subtitle.hashCode ^
      picture.hashCode ^
      isbuy.hashCode;
  }
}
