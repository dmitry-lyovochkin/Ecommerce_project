import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}