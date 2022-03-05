
import 'dart:convert';

import 'package:ecommerce_project/features/data/models/bestseller_model.dart';
import 'package:ecommerce_project/features/data/models/homestore_model.dart';

class Store {
  final String id;
  final List<Homestore> homestore;
  final List<Bestseller> bestseller;
  
  Store({
    required this.id,
    required this.homestore,
    required this.bestseller,
  });


  Store copyWith({
    String? id,
    List<Homestore>? homestore,
    List<Bestseller>? bestseller,
  }) {
    return Store(
      id: id ?? this.id,
      homestore: homestore ?? this.homestore,
      bestseller: bestseller ?? this.bestseller,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '_id': id,
      'home_store': homestore.map((x) => x.toMap()).toList(),
      'best_seller': bestseller.map((x) => x.toMap()).toList(),
    };
  }

  factory Store.fromMap(Map<String, dynamic> map) {
    return Store(
      id: map['_id'] ?? '',
      homestore: List<Homestore>.from(map['home_store']?.map((x) => Homestore.fromMap(x))),
      bestseller: List<Bestseller>.from(map['best_seller']?.map((x) => Bestseller.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Store.fromJson(String source) => Store.fromMap(json.decode(source));

  @override
  String toString() => 'Reposnsestore(_id: $id, home_store: $homestore, best_seller: $bestseller)';



  @override
  int get hashCode => id.hashCode ^ homestore.hashCode ^ bestseller.hashCode;
}


