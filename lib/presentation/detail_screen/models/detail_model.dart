import 'package:equatable/equatable.dart';
import 'imageslider_item_model.dart';

/// This class defines the variables used in the [detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class DetailModel extends Equatable {
  DetailModel({this.imagesliderItemList = const []});

  List<ImagesliderItemModel> imagesliderItemList;

  DetailModel copyWith({List<ImagesliderItemModel>? imagesliderItemList}) {
    return DetailModel(
      imagesliderItemList: imagesliderItemList ?? this.imagesliderItemList,
    );
  }

  @override
  List<Object?> get props => [imagesliderItemList];
}
