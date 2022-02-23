
import 'package:ecommerce_project/application/services/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_bloc.freezed.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState.initial()) {
    on<CounterStartEvent>((event, emit) async {
      if (state is CounterLoadedState) {
        await Future.delayed(const Duration(milliseconds: 5000));
        emit(const CounterState.loaded(counter: 0));

      }
    });
    on<CounterIncrementEvent>((event, emit) async {
      if (state is CounterLoadedState) {
        final counter = (state as CounterLoadedState).counter;
        emit(CounterState.loaded(counter: counter + 1));
      }
    });
    on<CounterDecrementEvent>((event, emit) async {
      if (state is CounterLoadedState) {
        final counter = (state as CounterLoadedState).counter;
        emit(CounterState.loaded(counter: counter - 1));
      }
    });
  }
}