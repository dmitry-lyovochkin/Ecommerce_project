import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/Best_Seller/best_seller.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/Home_Store/home_store.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/Api/response_store.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ShopApiResponseEntity {
  final String id;
  final List<Homestore> homestore;
  final List<Bestseller> bestseller;
  
  ShopApiResponseEntity({
    required this.id,
    required this.homestore,
    required this.bestseller,
  });

  factory ShopApiResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ShopApiFromJson(json);

  Map<String, dynamic> toJson() => _$ShopApiToJson(this);
}
