import 'package:ecommerce_project/core/error/exception.dart';
import 'package:ecommerce_project/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:ecommerce_project/features/cart/domain/entities/cart_entity.dart';
import 'package:ecommerce_project/features/cart/domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final CartRemoteDataSource cartRemoteDataSource;

  CartRepositoryImpl({required this.cartRemoteDataSource});

  @override
  Future<Either<Failure, List<BasketEntity>>> getAllBaskets() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CartEntity>>> getAllCarts() async {
    try {
      final remoteCart = await cartRemoteDataSource.getAllCarts();
      return Right(remoteCart);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}