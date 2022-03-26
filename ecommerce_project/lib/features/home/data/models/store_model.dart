import 'package:ecommerce_project/features/home/data/models/bestseller_model.dart';
import 'package:ecommerce_project/features/home/data/models/homestore_model.dart';
import 'package:ecommerce_project/features/home/domain/entities/home_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'store_model.g.dart';

@JsonSerializable()
class StoreModel extends StoreEntity {
  const StoreModel({
    required List<HomeStoreModel> homeStore,
    required List<BestSellerModel> bestSeller,
  }) : super(
    homeStore: homeStore,
    bestSeller: bestSeller,
  );

  factory StoreModel.fromJson(Map<String, dynamic> json) => _$StoreModelFromJson(json);
  Map<String, dynamic> toJson() => _$StoreModelToJson(this);
}


