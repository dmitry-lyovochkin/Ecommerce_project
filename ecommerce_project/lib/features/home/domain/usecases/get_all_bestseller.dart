import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/error/failure.dart';
import 'package:ecommerce_project/core/usecases/usecase.dart';
import 'package:ecommerce_project/features/home/domain/entities/bestseller_entity.dart';
import 'package:ecommerce_project/features/home/domain/repositories/home_repository.dart';

class GetAllBestsellerUseCase extends UseCase<List<BestSellerEntity>, void> {
  final HomeRepository bestsellerRepository;

  GetAllBestsellerUseCase(this.bestsellerRepository);

  @override
  Future<Either<Failure, List<BestSellerEntity>>> call({void params}) async {
    return await bestsellerRepository.getBestseller()!;
  }
}