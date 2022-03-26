import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/error/failure.dart';
import 'package:ecommerce_project/features/home/domain/entities/bestseller_entity.dart';
import 'package:ecommerce_project/features/home/domain/entities/home_entity.dart';
import 'package:ecommerce_project/features/home/domain/entities/homestore_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<StoreEntity>>>? getStore();
  Future<Either<Failure, List<HomeStoreEntity>>>? getHomestore();
  Future<Either<Failure, List<BestSellerEntity>>>? getBestseller();
}