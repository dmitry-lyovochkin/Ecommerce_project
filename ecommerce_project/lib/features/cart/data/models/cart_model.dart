import 'dart:convert';
import 'package:flutter/foundation.dart';
class GetCartItems {
  final int id;
  final String delivery;
  final int total;
  final List<Basket> basket;
  GetCartItems({
    required this.id,
    required this.delivery,
    required this.total,
    required this.basket,
  });

  GetCartItems copyWith({
    int? id,
    String? delivery,
    int? total,
    List<Basket>? basket,
  }) {
    return GetCartItems(
      id: id ?? this.id,
      delivery: delivery ?? this.delivery,
      total: total ?? this.total,
      basket: basket ?? this.basket,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '_id': id,
      'delivery': delivery,
      'total': total,
      'basket': basket.map((x) => x.toMap()).toList(),
    };
  }

  factory GetCartItems.fromMap(Map<String, dynamic> map) {
    return GetCartItems(
      id: map['total']?.toInt() ?? 0,
      delivery: map['delivery'] ?? '',
      total: map['total']?.toInt() ?? 0,
      basket: List<Basket>.from(map['basket']?.map((x) => Basket.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory GetCartItems.fromJson(String source) => GetCartItems.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Fe(_id: $id, delivery: $delivery, total: $total, basket: $basket)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is GetCartItems &&
      other.id == id &&
      other.delivery == delivery &&
      other.total == total &&
      listEquals(other.basket, basket);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      delivery.hashCode ^
      total.hashCode ^
      basket.hashCode;
  }
}

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