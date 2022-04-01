import 'package:ecommerce_project/features/home/domain/entities/bestseller_entity.dart';
import 'package:ecommerce_project/features/home/domain/entities/home_entity.dart';
import 'package:ecommerce_project/features/home/domain/entities/homestore_entity.dart';
import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeLoadingState extends HomeState {

  @override
  List<Object> get props => [];
}

class HomeLoadedState extends HomeState {
  final List<HomeStoreEntity> loadedHomestore;
  final List<BestSellerEntity> loadedBestseller;
  final List<StoreEntity> loadedStore;

  const HomeLoadedState({
    required this.loadedHomestore,
    required this.loadedBestseller,
    required this.loadedStore,
  });

  @override
  List<Object> get props => [loadedHomestore, loadedBestseller, loadedStore];
}

class HomeErrorState extends HomeState {
  final String message;

  const HomeErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
