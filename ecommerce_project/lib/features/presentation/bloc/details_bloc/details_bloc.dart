import 'package:ecommerce_project/features/data/models/details_model.dart';
import 'package:ecommerce_project/features/presentation/bloc/details_bloc/details_event.dart';
import 'package:ecommerce_project/features/presentation/bloc/details_bloc/details_repository.dart';
import 'package:ecommerce_project/features/presentation/bloc/details_bloc/details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final DetailsRepository detailsRepository;
  
  DetailsBloc(this.detailsRepository) : super(DetailsLoadingState()) {
    on<DetailsLoadEvent>((event, emit) async {
      emit(DetailsLoadingState());
      try {
        final List<GetDetails> _loadedDetailsList = await detailsRepository.getAllDetails();
        emit(DetailsLoadedState(loadedDetails: _loadedDetailsList));
      } catch (_) {
        emit(DetailsErrorState());
      }
    });
  }
}
