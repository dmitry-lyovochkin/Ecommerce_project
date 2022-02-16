// To parse this JSON data, do
//
//     final getCartItems = getCartItemsFromJson(jsonString);

import 'dart:convert';

List<GetCartItems> getCartItemsFromJson(String str) => List<GetCartItems>.from(json.decode(str).map((x) => GetCartItems.fromJson(x)));

String getCartItemsToJson(List<GetCartItems> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetCartItems {
    GetCartItems({
        required this.id,
        required this.delivery,
        required this.total,
        required this.basket,
    });

    String id;
    String delivery;
    int total;
    List<Basket> basket;

    factory GetCartItems.fromJson(Map<String, dynamic> json) => GetCartItems(
        id: json["_id"],
        delivery: json["delivery"],
        total: json["total"],
        basket: List<Basket>.from(json["basket"].map((x) => Basket.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "delivery": delivery,
        "total": total,
        "basket": List<dynamic>.from(basket.map((x) => x.toJson())),
    };
}

class Basket {
    Basket({
        required this.id,
        required this.images,
        required this.price,
        required this.title,
    });

    int id;
    String images;
    int price;
    String title;

    factory Basket.fromJson(Map<String, dynamic> json) => Basket(
        id: json["id"],
        images: json["images"],
        price: json["price"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "images": images,
        "price": price,
        "title": title,
    };
}
