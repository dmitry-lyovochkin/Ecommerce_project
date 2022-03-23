import 'package:equatable/equatable.dart';
import 'package:ecommerce_project/features/product/domain/entities/product_entity.dart';

abstract class ProductState extends Equatable{
  const ProductState();

  @override
  List<Object?> get props => [];
}

class ProductLoadingState extends ProductState {

  @override
  List<Object?> get props => [];
}

class ProductLoadedState extends ProductState {
  List<ProductEntity> loadedProduct;

  ProductLoadedState({
    required this.loadedProduct,
  });

  @override
  List<Object?> get props => [loadedProduct];
}

class ProductErrorState extends ProductState {
  final String message;

  const ProductErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}
