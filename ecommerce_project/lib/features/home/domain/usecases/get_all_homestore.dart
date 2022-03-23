import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/error/failure.dart';
import 'package:ecommerce_project/core/usecases/usecase.dart';
import 'package:ecommerce_project/features/home/domain/entities/homestore_entity.dart';
import 'package:ecommerce_project/features/home/domain/repositories/home_repository.dart';

class GetAllHomestoreUseCase extends UseCase<List<HomestoreEntity>, void> {
  final HomeRepository homestoreRepository;

  GetAllHomestoreUseCase(this.homestoreRepository);

  @override
  Future<Either<Failure, List<HomestoreEntity>>> call({void params}) async {
    return await homestoreRepository.getAllHomestore()!;
  }
}