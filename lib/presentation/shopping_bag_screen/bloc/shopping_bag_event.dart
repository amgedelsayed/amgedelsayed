part of 'shopping_bag_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShoppingBag widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ShoppingBagEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ShoppingBag widget is first created.
class ShoppingBagInitialEvent extends ShoppingBagEvent {
  @override
  List<Object?> get props => [];
}
