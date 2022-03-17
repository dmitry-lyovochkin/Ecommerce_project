import 'dart:convert';

class BestsellerModel {
  final int id;
  final bool isfavorites;
  final String title;
  final int pricewithoutdiscount;
  final int discountprice;
  final String picture;
  
  BestsellerModel({
    required this.id,
    required this.isfavorites,
    required this.title,
    required this.pricewithoutdiscount,
    required this.discountprice,
    required this.picture,
  });

  BestsellerModel copyWith({
    int? id,
    bool? isfavorites,
    String? title,
    int? pricewithoutdiscount,
    int? discountprice,
    String? picture,
  }) {
    return BestsellerModel(
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

  factory BestsellerModel.fromMap(Map<String, dynamic> map) {
    return BestsellerModel(
      id: map['id']?.toInt() ?? 0,
      isfavorites: map['is_favorites'] ?? false,
      title: map['title'] ?? '',
      pricewithoutdiscount: map['price_without_discount']?.toInt() ?? 0,
      discountprice: map['discount_price']?.toInt() ?? 0,
      picture: map['picture'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BestsellerModel.fromJson(String source) => BestsellerModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Best_seller(id: $id, is_favorites: $isfavorites, title: $title, price_without_discount: $pricewithoutdiscount, discount_price: $discountprice, picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BestsellerModel &&
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