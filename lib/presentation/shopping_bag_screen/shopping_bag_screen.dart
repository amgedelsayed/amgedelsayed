import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/shopping_bag_bloc.dart';
import 'models/itemslist_item_model.dart';
import 'models/shopping_bag_model.dart';
import 'widgets/itemslist_item_widget.dart';

class ShoppingBagScreen extends StatelessWidget {
  const ShoppingBagScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ShoppingBagBloc>(
      create: (context) => ShoppingBagBloc(ShoppingBagState(
        shoppingBagModelObj: ShoppingBagModel(),
      ))
        ..add(ShoppingBagInitialEvent()),
      child: ShoppingBagScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildTopNavigation(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 26.h),
              child: Column(
                children: [
                  _buildItemsList(context),
                  SizedBox(height: 24.h),
                  _buildCartSummary(context),
                  SizedBox(height: 26.h)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildTopNavigation(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 6.h,
          bottom: 6.h,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_my_shopping_cart".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildItemsList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 18.h),
      child: BlocSelector<ShoppingBagBloc, ShoppingBagState, ShoppingBagModel?>(
        selector: (state) => state.shoppingBagModelObj,
        builder: (context, shoppingBagModelObj) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 18.h),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0.h),
                child: Divider(
                  height: 1.h,
                  thickness: 1.h,
                  color: appTheme.whiteA70001.withOpacity(0.5),
                ),
              );
            },
            itemCount: shoppingBagModelObj?.itemslistItemList.length ?? 0,
            itemBuilder: (context, index) {
              ItemslistItemModel model =
                  shoppingBagModelObj?.itemslistItemList[index] ??
                      ItemslistItemModel();
              return ItemslistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCartSummary(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 36.h,
      ),
      child: Column(
        children: [
          Text(
            "msg_your_cart_qualifies".tr,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 24.h),
          Container(
            margin: EdgeInsets.only(right: 2.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder10,
              boxShadow: [
                BoxShadow(
                  color: appTheme.gray90002,
                ),
                BoxShadow(
                  color: appTheme.blueGray90003,
                  spreadRadius: 0,
                  blurRadius: 30,
                  offset: Offset(
                    4,
                    10,
                  ),
                )
              ],
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "lbl_bike30".tr,
                    style: CustomTextStyles.bodyMedium13,
                  ),
                ),
                CustomOutlinedButton(
                  height: 44.h,
                  width: 114.h,
                  text: "lbl_apply".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration: CustomButtonStyles
                      .gradientOnPrimaryContainerToIndigoATL101Decoration,
                  buttonTextStyle: CustomTextStyles.labelLargeWhiteA70001Bold,
                )
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 2.h),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: _buildDeliveryFeeRow(
                    context,
                    deliveryfeeOne: "lbl_subtotal".tr,
                    priceOne: "lbl_6119_99".tr,
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildDeliveryFeeRow(
                    context,
                    deliveryfeeOne: "lbl_delivery_fee".tr,
                    priceOne: "lbl_0".tr,
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildDeliveryFeeRow(
                    context,
                    deliveryfeeOne: "lbl_discount".tr,
                    priceOne: "lbl_30".tr,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_total".tr,
                  style: CustomTextStyles.titleSmallWhiteA70001Medium_1,
                ),
                Text(
                  "lbl_4_283_99".tr,
                  style: CustomTextStyles.titleMediumLightblue400,
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          CustomElevatedButton(
            height: 44.h,
            width: 174.h,
            text: "lbl_checkout".tr,
            leftIcon: Container(
              padding: EdgeInsets.fromLTRB(22.h, 10.h, 12.h, 16.h),
              margin: EdgeInsets.only(right: 22.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
                gradient: LinearGradient(
                  begin: Alignment(0.05, 0),
                  end: Alignment(1, 1.22),
                  colors: [
                    theme.colorScheme.onPrimaryContainer,
                    appTheme.indigoA400
                  ],
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowright,
                height: 16.h,
                width: 8.h,
                fit: BoxFit.contain,
              ),
            ),
            buttonStyle: CustomButtonStyles.outlineGray,
            buttonTextStyle: CustomTextStyles.titleSmallWhiteA70001Medium,
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDeliveryFeeRow(
    BuildContext context, {
    required String deliveryfeeOne,
    required String priceOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          deliveryfeeOne,
          style: CustomTextStyles.titleSmallWhiteA70001Medium_1.copyWith(
            color: appTheme.whiteA70001.withOpacity(0.87),
          ),
        ),
        Text(
          priceOne,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.whiteA70001.withOpacity(0.6),
          ),
        )
      ],
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
