import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/error/failure.dart';
import 'package:ecommerce_project/features/cart/domain/entities/cart_entity.dart';

abstract class CartRepository {
  Future<Either<Failure, List<CartEntity>>> getAllCarts();
  Future<Either<Failure, List<BasketEntity>>> getAllBaskets(); /* query вместо name */
}

/* Either dartz используется для представления любых двух типов одновременно и 
он идеально подходит для обработки ошибок где L(левая сторона) - сбой, 
а R(правая сторона) - Entiry, то есть сущность */
/* Таким образом ошибки не будут иметь так сказать своего особого потока ошибок как исключение.
Ошибки будут обрабатываться как и любые другие типы данных без использования блока try catch*/

