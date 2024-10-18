part of 'home_bloc.dart';

/// Represents the state of Home in the application.

// ignore_for_file: must_be_immutable
class HomeState extends Equatable {
  HomeState({this.homeInitialModelObj, this.homeModelObj});

  HomeModel? homeModelObj;

  HomeInitialModel? homeInitialModelObj;

  @override
  List<Object?> get props => [homeInitialModelObj, homeModelObj];
  HomeState copyWith({
    HomeInitialModel? homeInitialModelObj,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      homeInitialModelObj: homeInitialModelObj ?? this.homeInitialModelObj,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
