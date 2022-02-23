part of 'counter_bloc.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState.initial() = _CounterInitialState;
  const factory CounterState.loading() = _CounterLoadingState;
  const factory CounterState.loaded({required int counter}) = _CounterLoadedState;
}

// @immutable
// abstract class CounterState {}

// class CounterInitialState extends CounterState {}
// class CounterLoadingState extends CounterState {}
// class CounterLoadedState extends CounterState {
//   final int counter;

//   CounterLoadedState({required this.counter});

//   @override
//   List<Object?> get props => [counter];
// }

