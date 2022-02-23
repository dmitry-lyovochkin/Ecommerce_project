abstract class CartEvent {}

class CartLoadEvent extends CartEvent {}

class CounterLoadEvent extends CartEvent{}

// abstract class CounterEvent {}

class Increment extends CartEvent {}

class Decrement extends CartEvent {}



class CartMainLoadEvent extends CartEvent {}