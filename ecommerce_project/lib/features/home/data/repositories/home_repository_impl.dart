import 'package:ecommerce_project/core/error/exception.dart';
import 'package:ecommerce_project/features/home/data/datasources/home_remote_data_source.dart';
import 'package:ecommerce_project/features/home/domain/entities/bestseller_entity.dart';
import 'package:ecommerce_project/features/home/domain/entities/home_entity.dart';
import 'package:ecommerce_project/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/features/home/domain/entities/homestore_entity.dart';
import 'package:ecommerce_project/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepositoryImpl({required this.homeRemoteDataSource});

  @override
  Future<Either<Failure, List<BestSellerEntity>>> getBestseller() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<HomeStoreEntity>>> getHomestore() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<StoreEntity>>> getStore() async {
    try {
      final remoteHome = await homeRemoteDataSource.getStore();
      return Right(remoteHome);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

}