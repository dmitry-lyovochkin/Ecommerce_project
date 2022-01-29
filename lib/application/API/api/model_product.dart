class ProductDetailsModel {
  String? sId;
  String? cPU;
  String? camera;
  bool? isFavorites;
  int? price;
  int? rating;
  String? sd;
  String? ssd;
  String? title;
  List<String>? images;
  List<String>? color;
  List<String>? capacity;

  ProductDetailsModel(
      {this.sId,
      this.cPU,
      this.camera,
      this.isFavorites,
      this.price,
      this.rating,
      this.sd,
      this.ssd,
      this.title,
      this.images,
      this.color,
      this.capacity});

  ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    cPU = json['CPU'];
    camera = json['camera'];
    isFavorites = json['isFavorites'];
    price = json['price'];
    rating = json['rating'];
    sd = json['sd'];
    ssd = json['ssd'];
    title = json['title'];
    images = json['images'].cast<String>();
    color = json['color'].cast<String>();
    capacity = json['capacity'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['CPU'] = cPU;
    data['camera'] = camera;
    data['isFavorites'] = isFavorites;
    data['price'] = price;
    data['rating'] = rating;
    data['sd'] = sd;
    data['ssd'] = ssd;
    data['title'] = title;
    data['images'] = images;
    data['color'] = color;
    data['capacity'] = capacity;
    return data;
  }
}