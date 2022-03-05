abstract class DetailsState {}

class DetailsLoadingState extends DetailsState {}

class DetailsLoadedState extends DetailsState {
  List<dynamic> loadedDetails;
  DetailsLoadedState({required this.loadedDetails});
}

class DetailsErrorState extends DetailsState {}
