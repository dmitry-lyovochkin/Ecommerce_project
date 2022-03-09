import 'package:bloc/bloc.dart';
import 'package:ecommerce_project/features/home/data/models/homestore_model.dart';
import 'package:ecommerce_project/features/home/data/repositories/home_repository.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeStoreRepository homeRepository;
  
  HomeBloc(this.homeRepository) : super(HomeLoadingState()) {
    on<HomeLoadEvent>((event, emit) async{
      emit(HomeLoadingState());
        try {
          final List<Homestore> _loadedHomeStoreList = await homeRepository.getHomeStoreList();
          emit(HomeLoadedState(loadedHomestore: _loadedHomeStoreList));
        } catch (_) {
          emit(HomeErrorState());
        }
    });
  }
}
