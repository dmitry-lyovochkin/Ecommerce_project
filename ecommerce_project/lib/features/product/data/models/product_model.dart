
import 'dart:convert';

List<GetProduct> getDetailsFromJson(String str) => List<GetProduct>.from(json.decode(str).map((x) => GetProduct.fromJson(x)));

String getDetailsToJson(List<GetProduct> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetProduct {
    GetProduct({
      required this.id,
      required this.cpu,
      required this.camera,
      required this.isFavorites,
      required this.price,
      required this.rating,
      required this.sd,
      required this.ssd,
      required this.title,
      required this.images,
      required this.color,
      required this.capacity,
      }
    );

    String id;
    String cpu;
    String camera;
    bool isFavorites;
    int price;
    int rating;
    String sd;
    String ssd;
    String title;
    List<String> images;
    List<String> color;
    List<String> capacity;

    factory GetProduct.fromJson(Map<String, dynamic> json) => GetProduct(
        id: json["_id"],
        cpu: json["CPU"],
        camera: json["camera"],
        isFavorites: json["isFavorites"],
        price: json["price"],
        rating: json["rating"],
        sd: json["sd"],
        ssd: json["ssd"],
        title: json["title"],
        images: List<String>.from(json["images"].map((x) => x)),
        color: List<String>.from(json["color"].map((x) => x)),
        capacity: List<String>.from(json["capacity"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "CPU": cpu,
        "camera": camera,
        "isFavorites": isFavorites,
        "price": price,
        "rating": rating,
        "sd": sd,
        "ssd": ssd,
        "title": title,
        "images": List<dynamic>.from(images.map((x) => x)),
        "color": List<dynamic>.from(color.map((x) => x)),
        "capacity": List<dynamic>.from(capacity.map((x) => x)),
    };
}
