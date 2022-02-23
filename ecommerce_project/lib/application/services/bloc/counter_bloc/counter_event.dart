part of 'counter_bloc.dart';

@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.increment() = CounterIncrementEvent;
  const factory CounterEvent.decrement() = CounterDecrementEvent;

}

