
import 'dart:convert';

class ReposnseStore {
  final String id;
  final List<Homestore> homestore;
  final List<Bestseller> bestseller;
  
  ReposnseStore({
    required this.id,
    required this.homestore,
    required this.bestseller,
  });

  // String get title => null!;

  ReposnseStore copyWith({
    String? id,
    List<Homestore>? homestore,
    List<Bestseller>? bestseller,
  }) {
    return ReposnseStore(
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

  factory ReposnseStore.fromMap(Map<String, dynamic> map) {
    return ReposnseStore(
      id: map['_id'] ?? '',
      homestore: List<Homestore>.from(map['home_store']?.map((x) => Homestore.fromMap(x))),
      bestseller: List<Bestseller>.from(map['best_seller']?.map((x) => Bestseller.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ReposnseStore.fromJson(String source) => ReposnseStore.fromMap(json.decode(source));

  @override
  String toString() => 'Reposnsestore(_id: $id, home_store: $homestore, best_seller: $bestseller)';



  @override
  int get hashCode => id.hashCode ^ homestore.hashCode ^ bestseller.hashCode;
}

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

class Bestseller {
  final int id;
  final bool isfavorites;
  final String title;
  final int pricewithoutdiscount;
  final int discountprice;
  final String picture;
  Bestseller({
    required this.id,
    required this.isfavorites,
    required this.title,
    required this.pricewithoutdiscount,
    required this.discountprice,
    required this.picture,
  });

  Bestseller copyWith({
    int? id,
    bool? isfavorites,
    String? title,
    int? pricewithoutdiscount,
    int? discountprice,
    String? picture,
  }) {
    return Bestseller(
      id: id ?? this.id,
      isfavorites: isfavorites ?? this.isfavorites,
      title: title ?? this.title,
      pricewithoutdiscount: pricewithoutdiscount ?? this.pricewithoutdiscount,
      discountprice: discountprice ?? this.discountprice,
      picture: picture ?? this.picture,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'is_favorites': isfavorites,
      'title': title,
      'price_without_discount': pricewithoutdiscount,
      'discount_price': discountprice,
      'picture': picture,
    };
  }

  factory Bestseller.fromMap(Map<String, dynamic> map) {
    return Bestseller(
      id: map['id']?.toInt() ?? 0,
      isfavorites: map['is_favorites'] ?? false,
      title: map['title'] ?? '',
      pricewithoutdiscount: map['price_without_discount']?.toInt() ?? 0,
      discountprice: map['discount_price']?.toInt() ?? 0,
      picture: map['picture'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Bestseller.fromJson(String source) => Bestseller.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Best_seller(id: $id, is_favorites: $isfavorites, title: $title, price_without_discount: $pricewithoutdiscount, discount_price: $discountprice, picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Bestseller &&
      other.id == id &&
      other.isfavorites == isfavorites &&
      other.title == title &&
      other.pricewithoutdiscount == pricewithoutdiscount &&
      other.discountprice == discountprice &&
      other.picture == picture;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      isfavorites.hashCode ^
      title.hashCode ^
      pricewithoutdiscount.hashCode ^
      discountprice.hashCode ^
      picture.hashCode;
  }
}