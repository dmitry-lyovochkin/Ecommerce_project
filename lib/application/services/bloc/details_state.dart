// описание состояний - не пришли, загружаются, загружены, при загрузке данных произошла ошибка

abstract class DetailsState {}

class DetailsEmptyState extends DetailsState {}

class DetailsLoadingState extends DetailsState {}

class DetailsLoadedState extends DetailsState {
  List<dynamic> loadedDetails;
  DetailsLoadedState({required this.loadedDetails});
}

class DetailsErrorState extends DetailsState {}
