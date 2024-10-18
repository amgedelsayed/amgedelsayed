import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [itemslist_item_widget] screen.

// ignore_for_file: must_be_immutable
class ItemslistItemModel extends Equatable {
  ItemslistItemModel(
      {this.peugeotlrone,
      this.peugeotlrone1,
      this.price,
      this.quantity,
      this.id}) {
    peugeotlrone = peugeotlrone ?? ImageConstant.imgRobertByeTg36;
    peugeotlrone1 = peugeotlrone1 ?? "PEUGEOT- LR01";
    price = price ?? "\$ 1,999.99";
    quantity = quantity ?? 1;
    id = id ?? "";
  }

  String? peugeotlrone;

  String? peugeotlrone1;

  String? price;

  int? quantity;

  String? id;

  ItemslistItemModel copyWith({
    String? peugeotlrone,
    String? peugeotlrone1,
    String? price,
    int? quantity,
    String? id,
  }) {
    return ItemslistItemModel(
      peugeotlrone: peugeotlrone ?? this.peugeotlrone,
      peugeotlrone1: peugeotlrone1 ?? this.peugeotlrone1,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [peugeotlrone, peugeotlrone1, price, quantity, id];
}
