import 'package:ecommerce_project/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:ecommerce_project/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:ecommerce_project/features/cart/domain/repositories/cart_repository.dart';
import 'package:ecommerce_project/features/cart/domain/usecases/get_all_carts.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ecommerce_project/features/home/data/datasources/home_remote_data_source.dart';
import 'package:ecommerce_project/features/home/data/repositories/home_repository_impl.dart';
import 'package:ecommerce_project/features/home/domain/repositories/home_repository.dart';
import 'package:ecommerce_project/features/home/domain/usecases/get_all_store.dart';
import 'package:ecommerce_project/features/home/presentation/bloc/home_bloc.dart';
import 'package:ecommerce_project/features/product/data/datasources/product_remote_data_source.dart';
import 'package:ecommerce_project/features/product/data/repositories/product_repository_impl.dart';
import 'package:ecommerce_project/features/product/domain/repositories/product_repository.dart';
import 'package:ecommerce_project/features/product/domain/usecases/product_usecase.dart';
import 'package:ecommerce_project/features/product/presentation/bloc/product_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

GetIt injection = GetIt.instance;

Future<void> initializeDependencies() async {
  injection.registerFactory(() => HomeBloc(getAllStoreUseCase: injection()));
  injection.registerFactory(() => CartBloc(getAllCartUseCase: injection()));
  injection.registerFactory(() => ProductBloc(getAllProductUseCase: injection()));

  injection.registerLazySingleton(() => GetAllStoreUseCase(injection()));
  injection.registerLazySingleton(() => GetAllCartsUseCase(injection()));
  injection.registerLazySingleton(() => GetAllProductUseCase(injection()));

  injection.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(homeRemoteDataSource: injection()));
  injection.registerLazySingleton<CartRepository>(() => CartRepositoryImpl(cartRemoteDataSource: injection()));
  injection.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl(productRemoteDataSource: injection()));

  injection.registerLazySingleton<HomeRemoteDataSource>(() => HomeRemoteDataSourceImpl(client: http.Client()));
  injection.registerLazySingleton<CartRemoteDataSource>(() => CartRemoteDataSourceImpl(client: http.Client()));
  injection.registerLazySingleton<ProductRemoteDataSource>(() => ProductRemoteDataSourceImpl(client: http.Client()));

  injection.registerLazySingleton(() => http.Client());

} 
