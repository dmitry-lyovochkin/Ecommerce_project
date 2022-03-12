import 'dart:convert';
import 'package:ecommerce_project/features/cart/data/models/basket.model.dart';
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

