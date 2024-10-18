import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'itemslist_item_model.dart';

/// This class defines the variables used in the [shopping_bag_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class ShoppingBagModel extends Equatable {
  ShoppingBagModel({this.itemslistItemList = const []});

  List<ItemslistItemModel> itemslistItemList;

  ShoppingBagModel copyWith({List<ItemslistItemModel>? itemslistItemList}) {
    return ShoppingBagModel(
      itemslistItemList: itemslistItemList ?? this.itemslistItemList,
    );
  }

  @override
  List<Object?> get props => [itemslistItemList];
}
