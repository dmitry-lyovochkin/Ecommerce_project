import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/error/failure.dart';
import 'package:ecommerce_project/core/usecases/usecase.dart';
import 'package:ecommerce_project/features/cart/domain/entities/cart_entity.dart';
import 'package:ecommerce_project/features/cart/domain/repositories/cart_repository.dart';
import 'package:equatable/equatable.dart';

class GetAllCarts extends UseCase<List<CartEntity>, PageCartsParams> {
  final CartRepository cartRepository;

  GetAllCarts(this.cartRepository);

  Future<Either<Failure, List<CartEntity>>> call(PageCartsParams params) async {
    return await cartRepository.getAllCarts(params.delivery);
  }
}

class PageCartsParams extends Equatable {
  final String delivery;

  const PageCartsParams({required this.delivery});
  
  @override
  List<Object?> get props => [delivery];
}