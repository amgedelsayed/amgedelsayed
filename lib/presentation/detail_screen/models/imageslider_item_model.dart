import 'package:equatable/equatable.dart';

/// This class is used in the [imageslider_item_widget] screen.

// ignore_for_file: must_be_immutable
class ImagesliderItemModel extends Equatable {
  ImagesliderItemModel({this.id}) {
    id = id ?? "";
  }

  String? id;

  ImagesliderItemModel copyWith({String? id}) {
    return ImagesliderItemModel(
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [id];
}
