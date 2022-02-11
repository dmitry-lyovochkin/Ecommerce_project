import 'package:ecommerce_project/application/services/API/model_details.dart';
import 'package:ecommerce_project/application/services/bloc/details_event.dart';
import 'package:ecommerce_project/application/services/bloc/details_repository.dart';
import 'package:ecommerce_project/application/services/bloc/details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final DetailsRepository detailsRepository;
  
  DetailsBloc(this.detailsRepository) : super(DetailsEmptyState());

  Stream<DetailsState> mapEventToState(DetailsEvent event) async* {
    if (event is DetailsLoadEvent) {
      yield DetailsLoadingState();
      try {
        final List<GetDetails> _loadedDetailsList =
            await detailsRepository.getAllDetails();
        yield DetailsLoadedState(loadedDetails: _loadedDetailsList);
      } catch (_) {
        yield DetailsErrorState();
      }
    }
  }
}
