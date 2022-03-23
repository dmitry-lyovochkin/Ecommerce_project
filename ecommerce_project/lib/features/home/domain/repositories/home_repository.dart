import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/error/failure.dart';
import 'package:ecommerce_project/features/home/domain/entities/bestseller_entity.dart';
import 'package:ecommerce_project/features/home/domain/entities/home_entity.dart';
import 'package:ecommerce_project/features/home/domain/entities/homestore_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<StoreEntity>>>? getAllStore();
  Future<Either<Failure, List<HomestoreEntity>>>? getAllHomestore();
  Future<Either<Failure, List<BestsellerEntity>>>? getAllBestseller();
}