
import 'dart:convert';

List<GetDetails> getDetailsFromJson(String str) => List<GetDetails>.from(json.decode(str).map((x) => GetDetails.fromJson(x)));

String getDetailsToJson(List<GetDetails> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetDetails {
    GetDetails({
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

    factory GetDetails.fromJson(Map<String, dynamic> json) => GetDetails(
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
