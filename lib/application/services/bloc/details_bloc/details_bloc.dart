// import 'package:ecommerce_project/application/services/API/model_details.dart';
// import 'package:ecommerce_project/application/services/bloc/details_repository.dart';
// import 'package:ecommerce_project/application/services/bloc/details_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'details_bloc.freezed.dart';

// part 'details_event.dart';
// part 'details_state.dart';
// freezed версия
// class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
//   DetailsBloc(DetailsState initialState) : super(initialState){
//     on<DetailsErrorEvent>((event, emit) async {
//       await Future.delayed(const Duration());
//       emit(const DetailsState.loaded());
//     });
//     on<DetailsGetEvent>((event, emit) async {
//       await Future.delayed(const Duration());
//       emit(const DetailsState.loaded());
//     });
//   }
// }

// вторая версия
import 'package:ecommerce_project/application/services/API/model_details.dart';
import 'package:ecommerce_project/application/services/bloc/details_bloc/details_repository.dart';
import 'package:ecommerce_project/application/services/bloc/details_bloc/details_event.dart';
import 'package:ecommerce_project/application/services/bloc/details_bloc/details_state.dart';
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


// первая версия
//   Stream<DetailsState> mapEventToState(DetailsEvent event) async* {
//     if (event is DetailsLoadEvent) {
//       yield DetailsLoadingState();
//       try {
//         final List<GetDetails> _loadedDetailsList =
//             await detailsRepository.getAllDetails();
//         yield DetailsLoadedState(loadedDetails: _loadedDetailsList);
//       } catch (_) {
//         yield DetailsErrorState();
//       }
//     // } else if (event is DetailsClearEvent) {
//     //   yield DetailsEmptyState();
//     }
//   }
// }
