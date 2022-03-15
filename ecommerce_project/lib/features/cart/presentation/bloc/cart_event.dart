
import 'package:equatable/equatable.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

}

class CartLoadEvent extends CartEvent{
  const CartLoadEvent();

  @override
  List<Object?> get props => throw UnimplementedError(); 
}

