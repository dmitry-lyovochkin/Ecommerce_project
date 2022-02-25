
import 'package:equatable/equatable.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

}

class CartLoadEvent extends CartEvent{
  const CartLoadEvent();

  @override
  List<Object?> get props => throw UnimplementedError(); 
}

// class CounterEvent extends CartEvent {
//   int counetValue = 0;
//   CounterEvent({
//     required this.counetValue,
//   });

//   @override
//   List<Object?> get props => throw UnimplementedError();

  
// }



class Increment extends CartEvent {
  final int counterValue;
  const Increment({
    required this.counterValue,
  });

  @override
  List<Object?> get props => [counterValue];
}

class Decrement extends CartEvent {
  final int counterValue;
  const Decrement({
    required this.counterValue,
  });

  @override
  List<Object?> get props => [counterValue];
}



class CartMainLoadEvent extends CartEvent {

  @override
  List<Object?> get props => throw UnimplementedError();
}