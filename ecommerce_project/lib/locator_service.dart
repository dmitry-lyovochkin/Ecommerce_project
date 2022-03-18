import 'package:ecommerce_project/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:ecommerce_project/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:ecommerce_project/features/cart/domain/repositories/cart_repository.dart';
import 'package:ecommerce_project/features/cart/domain/usecases/get_all_carts.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final injection = GetIt.instance;

Future<void> init() async {
// Bloc
  injection.registerFactory(() => CartBloc(getAllCartUseCase: injection()));

// UseCases
  injection.registerLazySingleton(() => GetAllCartsUseCase(injection()));

// Repository
  injection.registerLazySingleton<CartRepository>(() => CartRepositoryImpl(cartRemoteDataSource: injection()));

  injection.registerLazySingleton<CartRemoteDataSource>(() => CartRemoteDataSourceImpl(client: http.Client()));

// External
  injection.registerLazySingleton(() => http.Client());


} 
// 10