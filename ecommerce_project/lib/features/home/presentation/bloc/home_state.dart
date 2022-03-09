part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}


class HomeLoadingState extends HomeState {

  @override
  List<Object> get props => [];
}

class HomeLoadedState extends HomeState {
  List<Homestore> loadedHomestore;
  HomeLoadedState({
    required this.loadedHomestore,
  });

  @override
  List<Object> get props => [loadedHomestore];
}

class HomeErrorState extends HomeState {

  @override
  List<Object> get props => throw UnimplementedError();
}
