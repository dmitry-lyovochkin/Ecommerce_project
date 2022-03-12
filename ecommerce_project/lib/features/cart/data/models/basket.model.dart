import 'dart:convert';

class Basket {
  final int id;
  final String images;
  final int price;
  final String title;
  Basket({
    required this.id,
    required this.images,
    required this.price,
    required this.title,
  });

  Basket copyWith({
    int? id,
    String? images,
    int? price,
    String? title,
  }) {
    return Basket(
      id: id ?? this.id,
      images: images ?? this.images,
      price: price ?? this.price,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'images': images,
      'price': price,
      'title': title,
    };
  }

  factory Basket.fromMap(Map<String, dynamic> map) {
    return Basket(
      id: map['id']?.toInt() ?? 0,
      images: map['images'] ?? '',
      price: map['price']?.toInt() ?? 0,
      title: map['title'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Basket.fromJson(String source) => Basket.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Basket(id: $id, images: $images, price: $price, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Basket &&
      other.id == id &&
      other.images == images &&
      other.price == price &&
      other.title == title;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      images.hashCode ^
      price.hashCode ^
      title.hashCode;
  }
}