import 'package:bloc/bloc.dart';
import 'package:ecommerce_project/features/home/data/models/bestseller_model.dart';
import 'package:ecommerce_project/features/home/data/models/homestore_model.dart';
import 'package:ecommerce_project/features/home/data/repositories/bestseller_repository.dart';
import 'package:ecommerce_project/features/home/data/repositories/home_repository.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeStoreRepository homeRepository;
  final BestSellerRepository bestSellerRepository;
  
  HomeBloc(this.homeRepository, this.bestSellerRepository) : super(HomeLoadingState()) {
    on<HomeLoadEvent>((event, emit) async{
      emit(HomeLoadingState());
        try {
          final List<HomestoreModel> _loadedHomeStoreList = await homeRepository.getHomeStoreList();
          final List<BestsellerModel> _loadedBestSellerList = await bestSellerRepository.getBestSellerList();
          emit(HomeLoadedState(loadedHomestore: _loadedHomeStoreList, loadedBestseller: _loadedBestSellerList));
        } catch (_) {
          emit(HomeErrorState());
        }
    });
  }
}
