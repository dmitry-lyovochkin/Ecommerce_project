
import 'package:ecommerce_project/application/services/bloc/counter_bloc/counter_bloc.dart';
import 'package:ecommerce_project/application/services/bloc/counter_bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


// part 'counter_event.dart';
part 'counter_state.dart';

// class CounterBloc extends Bloc<CounterEvent, CounterState> {
//   CounterBloc() : super(const CounterState.initial()) {
//     on<CounterStartEvent>((event, emit) async {
//       if (state is CounterLoadedState) {
//         await Future.delayed(const Duration(milliseconds: 5000));
//         emit(const CounterState.loaded(counter: 0));

//       }
//     });
//     on<CounterIncrementEvent>((event, emit) async {
//       if (state is CounterLoadedState) {
//         final counter = (state as CounterLoadedState).counter;
//         emit(CounterState.loaded(counter: counter + 1));
//       }
//     });
//     on<CounterDecrementEvent>((event, emit) async {
//       if (state is CounterLoadedState) {
//         final counter = (state as CounterLoadedState).counter;
//         emit(CounterState.loaded(counter: counter - 1));
//       }
//     });
//   }
// }

// enum CounterEvent { increment, decrement }

// class BlocCounter extends Bloc<CounterEvent, CounterState> {
//   BlocCounter() : super(CounterState(counterValue: 0));

//   @override
//   Stream<CounterState> mapEventToState(CounterEvent event) async* {
//     switch (event) {
//       case CounterEvent.increment:
//         yield CounterState(counterValue: state.counterValue + 1);
//         break;
//       case CounterEvent.decrement:
//         yield CounterState(counterValue: state.counterValue - 1);
//         break;
//     }
//   }
// }

class CounterObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}

// class CounterBloc extends Bloc<CounterEvent, CounterState> {
//   CounterBloc() : super(CounterState(counterValue: 0)) {
//     on<CounterEvent>(((event, emit) {
//       if (event is Increment) {
//         emit(CounterState(counterValue: state.counterValue + 1));
//       } else {
//         if (state.counterValue > 0) {
//         emit(CounterState(counterValue: state.counterValue - 1));
//         }
//       }
//     }));
//   }
// }

//   /// Add 1 to the current state.
//   void increment() => emit(state + 1);

//   /// Subtract 1 from the current state.
//   void decrement() => emit(state - 1);
// }