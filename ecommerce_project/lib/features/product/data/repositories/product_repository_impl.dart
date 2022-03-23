import 'package:ecommerce_project/core/error/exception.dart';
import 'package:ecommerce_project/features/product/data/datasources/product_remote_data_source.dart';
import 'package:ecommerce_project/features/product/domain/entities/product_entity.dart';
import 'package:ecommerce_project/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/features/product/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource productRemoteDataSource;

  ProductRepositoryImpl({required this.productRemoteDataSource});

  @override
  Future<Either<Failure, List<ProductEntity>>> getAllProducts() async {
    try {
      final remoteProduct = await productRemoteDataSource.getAllProducts();
      return Right(remoteProduct);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}