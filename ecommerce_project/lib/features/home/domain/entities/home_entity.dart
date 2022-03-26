import 'package:ecommerce_project/features/home/data/models/bestseller_model.dart';
import 'package:ecommerce_project/features/home/data/models/homestore_model.dart';
import 'package:equatable/equatable.dart';

class StoreEntity extends Equatable{
  final List<HomeStoreModel>? homeStore;
  final List<BestSellerModel>? bestSeller;
  
  const StoreEntity({
    required this.homeStore,
    required this.bestSeller,
  });

  @override
  List<Object?> get props => [homeStore, bestSeller];
}

