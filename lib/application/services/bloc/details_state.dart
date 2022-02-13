// описание состояний - не пришли, загружаются, загружены, при загрузке данных произошла ошибка

// part of 'details_bloc.dart'; 

// @freezed
// class DetailsState with _$DetailsState {
//   const factory DetailsState.loading() = _DetailsLoadingState;
//   const factory DetailsState.loaded() = _DetailsLoadedState;

// }



// первая реализация
abstract class DetailsState {}

class DetailsEmptyState extends DetailsState {}

class DetailsLoadingState extends DetailsState {}

class DetailsLoadedState extends DetailsState {
  List<dynamic> loadedDetails;
  DetailsLoadedState({required this.loadedDetails});
}

class DetailsErrorState extends DetailsState {}
