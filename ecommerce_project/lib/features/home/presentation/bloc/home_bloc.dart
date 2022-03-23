import 'package:bloc/bloc.dart';
import 'package:ecommerce_project/features/home/domain/entities/bestseller_entity.dart';
import 'package:ecommerce_project/features/home/domain/entities/home_entity.dart';
import 'package:ecommerce_project/features/home/domain/entities/homestore_entity.dart';
import 'package:ecommerce_project/features/home/domain/usecases/get_all_store.dart';
import 'package:ecommerce_project/features/home/presentation/bloc/home_event.dart';
import 'package:ecommerce_project/features/home/presentation/bloc/home_state.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAllStoreUseCase getAllStoreUseCase;

  HomeBloc({required this.getAllStoreUseCase}) : super(HomeLoadingState()) {
    on<HomeLoadEvent>((event, emit) async{
      emit(HomeLoadingState());
        List<HomestoreEntity> _loadedHomeStoreList = [];
        List<BestsellerEntity> _loadedBestSellerList = [];
        final _loadedStoreList = await getAllStoreUseCase();
        List<StoreEntity> _storeList = [];

        _loadedStoreList.fold((l) => emit(const HomeErrorState(message: 'error')), 
          (r) => _storeList.addAll(r));

      _loadedHomeStoreList = _storeList.map<List<HomestoreEntity>>((e) => e.homestore).expand((element) => element).toList();
      _loadedBestSellerList = _storeList.map<List<BestsellerEntity>>((e) => e.bestseller).expand((element) => element).toList();

      emit(HomeLoadedState(loadedHomestore: _loadedHomeStoreList, loadedBestseller: _loadedBestSellerList, loadedStore: _storeList));
    });
  }
}
