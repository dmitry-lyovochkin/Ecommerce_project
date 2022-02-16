abstract class CartState {}

// class DetailsEmptyState extends DetailsState {}

class CartLoadingState extends CartState {}

class CartLoadedState extends CartState {
  List<dynamic> loadedCart;
  CartLoadedState({required this.loadedCart});
}

class CartErrorState extends CartState {}