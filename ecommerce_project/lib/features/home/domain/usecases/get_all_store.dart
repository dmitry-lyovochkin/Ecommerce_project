import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/error/failure.dart';
import 'package:ecommerce_project/core/usecases/usecase.dart';
import 'package:ecommerce_project/features/home/domain/entities/home_entity.dart';
import 'package:ecommerce_project/features/home/domain/repositories/home_repository.dart';

class GetAllStoreUseCase extends UseCase<List<StoreEntity>, void> {
  final HomeRepository homeRepository;

  GetAllStoreUseCase(this.homeRepository);

  @override
  Future<Either<Failure, List<StoreEntity>>> call({void params}) async {
    return await homeRepository.getStore()!;
  }
}