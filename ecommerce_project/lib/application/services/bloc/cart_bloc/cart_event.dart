abstract class CartEvent {}

class CartLoadEvent extends CartEvent {}

class CounterLoadEvent extends CartEvent{}



class Increment extends CartEvent {}

class Decrement extends CartEvent {}



class CartMainLoadEvent extends CartEvent {}