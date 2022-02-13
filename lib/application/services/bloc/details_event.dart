abstract class DetailsEvent {}

class DetailsLoadEvent extends DetailsEvent {}

class DetailsClearEvent extends DetailsEvent {}


// part of 'details_bloc.dart';


// @freezed
// class DetailsEvent with _$DetailsEvent {
//   const factory DetailsEvent.get() = DetailsGetEvent;
//   const factory DetailsEvent.start() = DetailsErrorEvent;
// }