import 'dart:convert';

class Reposnsestore {
  final String id;
  final List<Home_store> home_store;
  final List<Best_seller> best_seller;
  Reposnsestore({
    required this.id,
    required this.home_store,
    required this.best_seller,
  });

  Reposnsestore copyWith({
    String? id,
    List<Home_store>? home_store,
    List<Best_seller>? best_seller,
  }) {
    return Reposnsestore(
      id: id ?? this.id,
      home_store: home_store ?? this.home_store,
      best_seller: best_seller ?? this.best_seller,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '_id': id,
      'home_store': home_store.map((x) => x.toMap()).toList(),
      'best_seller': best_seller.map((x) => x.toMap()).toList(),
    };
  }

  factory Reposnsestore.fromMap(Map<String, dynamic> map) {
    return Reposnsestore(
      id: map['_id'] ?? '',
      home_store: List<Home_store>.from(map['home_store']?.map((x) => Home_store.fromMap(x))),
      best_seller: List<Best_seller>.from(map['best_seller']?.map((x) => Best_seller.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Reposnsestore.fromJson(String source) => Reposnsestore.fromMap(json.decode(source));

  @override
  String toString() => 'Reposnsestore(_id: $id, home_store: $home_store, best_seller: $best_seller)';



  @override
  int get hashCode => id.hashCode ^ home_store.hashCode ^ best_seller.hashCode;
}

class Home_store {
  final int id;
  final bool is_new;
  final String title;
  final String subtitle;
  final String picture;
  final bool is_buy;
  Home_store({
    required this.id,
    required this.is_new,
    required this.title,
    required this.subtitle,
    required this.picture,
    required this.is_buy,
  });

  Home_store copyWith({
    int? id,
    bool? is_new,
    String? title,
    String? subtitle,
    String? picture,
    bool? is_buy,
  }) {
    return Home_store(
      id: id ?? this.id,
      is_new: is_new ?? this.is_new,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      picture: picture ?? this.picture,
      is_buy: is_buy ?? this.is_buy,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'is_new': is_new,
      'title': title,
      'subtitle': subtitle,
      'picture': picture,
      'is_buy': is_buy,
    };
  }

  factory Home_store.fromMap(Map<String, dynamic> map) {
    return Home_store(
      id: map['id']?.toInt() ?? 0,
      is_new: map['is_new'] ?? false,
      title: map['title'] ?? '',
      subtitle: map['subtitle'] ?? '',
      picture: map['picture'] ?? '',
      is_buy: map['is_buy'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Home_store.fromJson(String source) => Home_store.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Home_store(id: $id, is_new: $is_new, title: $title, subtitle: $subtitle, picture: $picture, is_buy: $is_buy)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Home_store &&
      other.id == id &&
      other.is_new == is_new &&
      other.title == title &&
      other.subtitle == subtitle &&
      other.picture == picture &&
      other.is_buy == is_buy;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      is_new.hashCode ^
      title.hashCode ^
      subtitle.hashCode ^
      picture.hashCode ^
      is_buy.hashCode;
  }
}

class Best_seller {
  final int id;
  final bool is_favorites;
  final String title;
  final int price_without_discount;
  final int discount_price;
  final String picture;
  Best_seller({
    required this.id,
    required this.is_favorites,
    required this.title,
    required this.price_without_discount,
    required this.discount_price,
    required this.picture,
  });

  Best_seller copyWith({
    int? id,
    bool? is_favorites,
    String? title,
    int? price_without_discount,
    int? discount_price,
    String? picture,
  }) {
    return Best_seller(
      id: id ?? this.id,
      is_favorites: is_favorites ?? this.is_favorites,
      title: title ?? this.title,
      price_without_discount: price_without_discount ?? this.price_without_discount,
      discount_price: discount_price ?? this.discount_price,
      picture: picture ?? this.picture,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'is_favorites': is_favorites,
      'title': title,
      'price_without_discount': price_without_discount,
      'discount_price': discount_price,
      'picture': picture,
    };
  }

  factory Best_seller.fromMap(Map<String, dynamic> map) {
    return Best_seller(
      id: map['id']?.toInt() ?? 0,
      is_favorites: map['is_favorites'] ?? false,
      title: map['title'] ?? '',
      price_without_discount: map['price_without_discount']?.toInt() ?? 0,
      discount_price: map['discount_price']?.toInt() ?? 0,
      picture: map['picture'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Best_seller.fromJson(String source) => Best_seller.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Best_seller(id: $id, is_favorites: $is_favorites, title: $title, price_without_discount: $price_without_discount, discount_price: $discount_price, picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Best_seller &&
      other.id == id &&
      other.is_favorites == is_favorites &&
      other.title == title &&
      other.price_without_discount == price_without_discount &&
      other.discount_price == discount_price &&
      other.picture == picture;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      is_favorites.hashCode ^
      title.hashCode ^
      price_without_discount.hashCode ^
      discount_price.hashCode ^
      picture.hashCode;
  }
}