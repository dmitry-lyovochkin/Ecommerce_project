import 'package:ecommerce_project/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/usecases/usecase.dart';
import 'package:ecommerce_project/features/product/domain/entities/product_entity.dart';
import 'package:ecommerce_project/features/product/domain/repositories/product_repository.dart';

class GetAllProductUseCase extends UseCase<List<ProductEntity>, void> {
  final ProductRepository productRepository;

  GetAllProductUseCase(this.productRepository);

  @override
  Future<Either<Failure, List<ProductEntity>>> call({void params}) async{
    return await productRepository.getAllProducts();
  }
}
