import 'package:ecommerce_project/features/home/data/models/bestseller_model.dart';
import 'package:ecommerce_project/features/home/data/models/homestore_model.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'home_entity.g.dart';

// @JsonSerializable()
class StoreEntity extends Equatable{
  final List<HomestoreModel> homestore;
  final List<BestsellerModel> bestseller;
  
  const StoreEntity({
    required this.homestore,
    required this.bestseller,
  });

  @override
  List<Object?> get props => [homestore, bestseller];

  addAll(StoreEntity r) {}

  // factory StoreEntity.fromJson(Map<String, dynamic> json) => _$StoreEntityFromJson(json);
  // Map<String, dynamic> toJson() => _$StoreEntityToJson(this);
}

