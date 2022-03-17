import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/error/failure.dart';
import 'package:ecommerce_project/core/usecases/usecase.dart';
import 'package:ecommerce_project/features/cart/domain/entities/cart_entity.dart';
import 'package:ecommerce_project/features/cart/domain/repositories/cart_repository.dart';
import 'package:equatable/equatable.dart';

class GetAllBaskets extends UseCase<List<CartEntity>, BasketsCartParams> {
  final CartRepository cartRepository;

  GetAllBaskets(this.cartRepository);

  Future<Either<Failure, List<CartEntity>>> call(BasketsCartParams params) async {
    return await cartRepository.getAllBaskets(params.query);
  }
}

class BasketsCartParams extends Equatable {
  final String query;

  const BasketsCartParams({required this.query});

  @override
  List<Object?> get props => [query];
}