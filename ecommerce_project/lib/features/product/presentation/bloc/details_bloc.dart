import 'package:ecommerce_project/features/product/data/models/product_model.dart';
import 'package:ecommerce_project/features/product/data/repositories/product_details_repository.dart';
import 'package:ecommerce_project/features/product/presentation/bloc/details_event.dart';
import 'package:ecommerce_project/features/product/presentation/bloc/details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final ProductDetailsRepository detailsRepository;
  
  DetailsBloc(this.detailsRepository) : super(DetailsLoadingState()) {
    on<DetailsLoadEvent>((event, emit) async {
      emit(DetailsLoadingState());
      try {
        final List<GetProduct> _loadedDetailsList = await detailsRepository.getAllDetails();
        emit(DetailsLoadedState(loadedDetails: _loadedDetailsList));
      } catch (_) {
        emit(DetailsErrorState());
      }
    });
  }
}
