import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/detail_model.dart';
import '../models/detailspecifica_tab_model.dart';
import '../models/imageslider_item_model.dart';
part 'detail_event.dart';
part 'detail_state.dart';

/// A bloc that manages the state of a Detail according to the event that is dispatched to it.
class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc(DetailState initialState) : super(initialState) {
    on<DetailInitialEvent>(_onInitialize);
    on<ChangeSliderIndexEvent>(_changeSliderIndex);
  }

  _onInitialize(
    DetailInitialEvent event,
    Emitter<DetailState> emit,
  ) async {
    emit(
      state.copyWith(
        sliderIndex: 0,
      ),
    );
    emit(
      state.copyWith(
        detailModelObj: state.detailModelObj?.copyWith(
          imagesliderItemList: fillImagesliderItemList(),
        ),
      ),
    );
  }

  _changeSliderIndex(
    ChangeSliderIndexEvent event,
    Emitter<DetailState> emit,
  ) {
    emit(state.copyWith(
      sliderIndex: event.value,
    ));
  }

  List<ImagesliderItemModel> fillImagesliderItemList() {
    return List.generate(1, (index) => ImagesliderItemModel());
  }
}
