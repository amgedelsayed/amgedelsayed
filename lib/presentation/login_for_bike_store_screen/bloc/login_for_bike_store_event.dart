part of 'login_for_bike_store_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginForBikeStore widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LoginForBikeStoreEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LoginForBikeStore widget is first created.
class LoginForBikeStoreInitialEvent extends LoginForBikeStoreEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable
class ChangePasswordVisibilityEvent extends LoginForBikeStoreEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing checkbox

// ignore_for_file: must_be_immutable
class ChangeCheckBoxEvent extends LoginForBikeStoreEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
