part of 'detail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Detail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class DetailEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Detail widget is first created.
class DetailInitialEvent extends DetailEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing slider index

// ignore_for_file: must_be_immutable
class ChangeSliderIndexEvent extends DetailEvent {
  ChangeSliderIndexEvent({required this.value});

  int value;

  @override
  List<Object?> get props => [value];
}
