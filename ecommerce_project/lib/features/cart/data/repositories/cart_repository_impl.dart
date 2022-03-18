import 'package:ecommerce_project/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/features/cart/domain/entities/cart_entity.dart';
import 'package:ecommerce_project/features/cart/domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  @override
  Future<Either<Failure, List<CartEntity>>> getAllBaskets(String query) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CartEntity>>> getAllCarts(String delivery) {
    throw UnimplementedError();
  }
 
  
}