part of 'detail_bloc.dart';

/// Represents the state of Detail in the application.

// ignore_for_file: must_be_immutable
class DetailState extends Equatable {
  DetailState(
      {this.sliderIndex = 0,
      this.detailspecificaTabModelObj,
      this.detailModelObj});

  DetailModel? detailModelObj;

  int sliderIndex;

  DetailspecificaTabModel? detailspecificaTabModelObj;

  @override
  List<Object?> get props =>
      [sliderIndex, detailspecificaTabModelObj, detailModelObj];
  DetailState copyWith({
    int? sliderIndex,
    DetailspecificaTabModel? detailspecificaTabModelObj,
    DetailModel? detailModelObj,
  }) {
    return DetailState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      detailspecificaTabModelObj:
          detailspecificaTabModelObj ?? this.detailspecificaTabModelObj,
      detailModelObj: detailModelObj ?? this.detailModelObj,
    );
  }
}
