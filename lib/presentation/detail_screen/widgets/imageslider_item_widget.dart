import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/imageslider_item_model.dart';

// ignore_for_file: must_be_immutable
class ImagesliderItemWidget extends StatelessWidget {
  ImagesliderItemWidget(this.imagesliderItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ImagesliderItemModel imagesliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 208.h,
      margin: EdgeInsets.only(
        left: 30.h,
        top: 58.h,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRobertByeTg36,
            height: 208.h,
            width: double.maxFinite,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup6,
            height: 10.h,
            width: double.maxFinite,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 16.h),
          )
        ],
      ),
    );
  }
}
