part of 'shopping_bag_bloc.dart';

/// Represents the state of ShoppingBag in the application.

// ignore_for_file: must_be_immutable
class ShoppingBagState extends Equatable {
  ShoppingBagState({this.shoppingBagModelObj});

  ShoppingBagModel? shoppingBagModelObj;

  @override
  List<Object?> get props => [shoppingBagModelObj];
  ShoppingBagState copyWith({ShoppingBagModel? shoppingBagModelObj}) {
    return ShoppingBagState(
      shoppingBagModelObj: shoppingBagModelObj ?? this.shoppingBagModelObj,
    );
  }
}
