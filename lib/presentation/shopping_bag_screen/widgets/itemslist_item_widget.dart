import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/itemslist_item_model.dart';

// ignore_for_file: must_be_immutable
class ItemslistItemWidget extends StatelessWidget {
  ItemslistItemWidget(this.itemslistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ItemslistItemModel itemslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      minTileHeight: 0,
      minLeadingWidth: 0,
      visualDensity: VisualDensity(
        vertical: -4,
        horizontal: -4,
      ),
      contentPadding: EdgeInsets.zero,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            itemslistItemModelObj.peugeotlrone1!,
            style: CustomTextStyles.titleSmallWhiteA70001,
          ),
          SizedBox(height: 24.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  itemslistItemModelObj.price!,
                  style: CustomTextStyles.bodyMediumBlue40001,
                ),
                Container(
                  width: 80.h,
                  padding: EdgeInsets.all(2.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.gray90003,
                      ),
                      BoxShadow(
                        color: appTheme.blueGray90003,
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(
                          2,
                          2,
                        ),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 24.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup7,
                                height: 24.h,
                                width: 24.h,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.h),
                      Text(
                        (itemslistItemModelObj.quantity!).toString(),
                        style: CustomTextStyles.labelLargeSemiBold,
                      ),
                      SizedBox(width: 10.h),
                      Expanded(
                        child: Container(
                          height: 24.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgPlus,
                                height: 24.h,
                                width: 24.h,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      leading: Container(
        height: 90.h,
        width: 100.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder10,
          gradient: LinearGradient(
            begin: Alignment(0.82, 1),
            end: Alignment(0.2, 0),
            colors: [appTheme.blueGray80001, theme.colorScheme.errorContainer],
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: itemslistItemModelObj.peugeotlrone!,
              height: 58.h,
              width: 82.h,
            )
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
