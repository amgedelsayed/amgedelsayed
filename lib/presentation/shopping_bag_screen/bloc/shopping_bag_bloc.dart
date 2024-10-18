import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/itemslist_item_model.dart';
import '../models/shopping_bag_model.dart';
part 'shopping_bag_event.dart';
part 'shopping_bag_state.dart';

/// A bloc that manages the state of a ShoppingBag according to the event that is dispatched to it.
class ShoppingBagBloc extends Bloc<ShoppingBagEvent, ShoppingBagState> {
  ShoppingBagBloc(ShoppingBagState initialState) : super(initialState) {
    on<ShoppingBagInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShoppingBagInitialEvent event,
    Emitter<ShoppingBagState> emit,
  ) async {
    emit(
      state.copyWith(
        shoppingBagModelObj: state.shoppingBagModelObj?.copyWith(
          itemslistItemList: fillItemslistItemList(),
        ),
      ),
    );
  }

  List<ItemslistItemModel> fillItemslistItemList() {
    return [
      ItemslistItemModel(
          peugeotlrone: ImageConstant.imgRobertByeTg36,
          peugeotlrone1: "PEUGEOT- LR01",
          price: "\$ 1,999.99"),
      ItemslistItemModel(
          peugeotlrone: ImageConstant.imgMikkelBechYja,
          peugeotlrone1: "PILOT - CHROMOLY 520",
          price: "\$ 3,999.99"),
      ItemslistItemModel(
          peugeotlrone: ImageConstant.imgCobiKrumholzM82x82,
          peugeotlrone1: "SMITH - Trade",
          price: "\$ 120")
    ];
  }
}
