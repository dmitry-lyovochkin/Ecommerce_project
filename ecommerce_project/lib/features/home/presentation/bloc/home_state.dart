part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}


class HomeLoadingState extends HomeState {

  @override
  List<Object> get props => [];
}

class HomeLoadedState extends HomeState {
  final List<Homestore> loadedHomestore;
  final List<Bestseller> loadedBestseller;
  const HomeLoadedState({
    required this.loadedHomestore,
    required this.loadedBestseller,
  });

  @override
  List<Object> get props => [loadedHomestore, loadedBestseller];
}

class HomeErrorState extends HomeState {

  @override
  List<Object> get props => throw UnimplementedError();
}
