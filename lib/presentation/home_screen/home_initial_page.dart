import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/home_bloc.dart';
import 'models/home_initial_model.dart';

class HomeInitialPage extends StatefulWidget {
  const HomeInitialPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeInitialPageState createState() => HomeInitialPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeInitialModelObj: HomeInitialModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeInitialPage(),
    );
  }
}

class HomeInitialPageState extends State<HomeInitialPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.blueGray90003,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray600,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              30,
            ),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildTopNavigation(context),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: 1040.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              margin: EdgeInsets.only(top: 36.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 30.h,
                                vertical: 218.h,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    ImageConstant.imgCategories,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomOutlinedButton(
                                    height: 50.h,
                                    width: 50.h,
                                    text: "lbl_all".tr,
                                    margin: EdgeInsets.only(
                                      top: 40.h,
                                      bottom: 192.h,
                                    ),
                                    buttonStyle: CustomButtonStyles.none,
                                    decoration: CustomButtonStyles
                                        .gradientOnPrimaryContainerToIndigoADecoration,
                                    buttonTextStyle:
                                        CustomTextStyles.labelLargeWhiteA70001,
                                  ),
                                  SizedBox(width: 20.h),
                                  SizedBox(width: 20.h),
                                  Padding(
                                    padding: EdgeInsets.only(top: 30.h),
                                    child: CustomIconButton(
                                      height: 50.h,
                                      width: 50.h,
                                      padding: EdgeInsets.all(6.h),
                                      decoration: IconButtonStyleHelper
                                          .gradientBlueGrayToBlueGray,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgUser,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20.h),
                                  SizedBox(width: 20.h),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRoad,
                                    height: 50.h,
                                    width: 50.h,
                                    radius: BorderRadius.circular(
                                      10.h,
                                    ),
                                    margin: EdgeInsets.only(top: 20.h),
                                  ),
                                  SizedBox(width: 20.h),
                                  SizedBox(width: 20.h),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.h),
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: ClipRect(
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 30,
                                            sigmaY: 30,
                                          ),
                                          child: CustomIconButton(
                                            height: 50.h,
                                            width: 50.h,
                                            padding: EdgeInsets.all(10.h),
                                            decoration: IconButtonStyleHelper
                                                .gradientBlueGrayToGray,
                                            child: CustomImageView(
                                              imagePath: ImageConstant.imgClose,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20.h),
                                  SizedBox(width: 20.h),
                                  CustomIconButton(
                                    height: 50.h,
                                    width: 50.h,
                                    padding: EdgeInsets.all(10.h),
                                    decoration: IconButtonStyleHelper
                                        .gradientBlueGrayToGrayTL10,
                                    child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgUserWhiteA70001,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          _buildElectricBikeSection(context),
                          SizedBox(height: 66.h),
                          Container(
                            height: 734.h,
                            width: double.maxFinite,
                            margin: EdgeInsets.only(right: 18.h),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 166.h,
                                    margin: EdgeInsets.only(
                                      left: 20.h,
                                      top: 24.h,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.h,
                                      vertical: 22.h,
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          ImageConstant.imgGroup102,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 104.h,
                                          width: double.maxFinite,
                                          margin: EdgeInsets.only(left: 6.h),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              SizedBox(
                                                width: double.maxFinite,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgHeart24Outline,
                                                      height: 24.h,
                                                      width: 26.h,
                                                      alignment:
                                                          Alignment.centerRight,
                                                    ),
                                                    SizedBox(height: 68.h),
                                                    Container(
                                                      width: double.maxFinite,
                                                      margin: EdgeInsets.only(
                                                        left: 8.h,
                                                        right: 4.h,
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            child:
                                                                ImageFiltered(
                                                              imageFilter:
                                                                  ImageFilter
                                                                      .blur(
                                                                sigmaX: 2.0,
                                                                sigmaY: 2.0,
                                                              ),
                                                              child: Container(
                                                                height: 4.h,
                                                                width: 50.h,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: appTheme
                                                                      .black900
                                                                      .withOpacity(
                                                                          0.1),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    24.h,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 10.h),
                                                          Expanded(
                                                            child:
                                                                ImageFiltered(
                                                              imageFilter:
                                                                  ImageFilter
                                                                      .blur(
                                                                sigmaX: 2.0,
                                                                sigmaY: 2.0,
                                                              ),
                                                              child: Container(
                                                                height: 4.h,
                                                                width: 52.h,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: appTheme
                                                                      .black900
                                                                      .withOpacity(
                                                                          0.1),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    26.h,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRobertByeTg36,
                                                height: 88.h,
                                                width: double.maxFinite,
                                                alignment:
                                                    Alignment.bottomCenter,
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 16.h),
                                        Text(
                                          "lbl_road_bike".tr,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                        Text(
                                          "lbl_peugeot_lr01".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                        Text(
                                          "lbl_1_999_99".tr,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                        SizedBox(height: 10.h)
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle166,
                                  height: 254.h,
                                  width: 166.h,
                                  radius: BorderRadius.circular(
                                    20.h,
                                  ),
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(right: 20.h),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: 114.h,
                                      bottom: 294.h,
                                    ),
                                    child: Text(
                                      "lbl_1_999_99".tr,
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant
                                      .imgHeart24OutlineWhiteA70001,
                                  height: 24.h,
                                  width: 26.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 234.h,
                                    right: 36.h,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgMikkelBechYja,
                                  height: 78.h,
                                  width: 118.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 270.h,
                                    right: 46.h,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 166.h,
                                    margin: EdgeInsets.only(right: 20.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.h,
                                      vertical: 20.h,
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          ImageConstant.imgRectangle166,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 104.h,
                                          width: double.maxFinite,
                                          margin: EdgeInsets.only(
                                            left: 4.h,
                                            right: 6.h,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgHeart24OutlineWhiteA70001,
                                                height: 24.h,
                                                width: 26.h,
                                                alignment: Alignment.topRight,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgCobiKrumholzM,
                                                height: 104.h,
                                                width: double.maxFinite,
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        Text(
                                          "lbl_road_helmet".tr,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                        Text(
                                          "lbl_smith_trade".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                        Text(
                                          "lbl_120".tr,
                                          style: theme.textTheme.labelLarge,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    width: 166.h,
                                    margin: EdgeInsets.only(
                                      right: 20.h,
                                      bottom: 46.h,
                                    ),
                                    padding: EdgeInsets.all(10.h),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          ImageConstant.imgItems9,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 6.h),
                                        Container(
                                          height: 126.h,
                                          width: double.maxFinite,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 4.h),
                                          child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgHeart24OutlineWhiteA70001,
                                                height: 24.h,
                                                width: 26.h,
                                                alignment: Alignment.topRight,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgCobiKrumholzM112x132,
                                                height: 112.h,
                                                width: double.maxFinite,
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        Text(
                                          "lbl_road_helmet".tr,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                        Text(
                                          "lbl_smith_trade".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                        Text(
                                          "lbl_120".tr,
                                          style: theme.textTheme.labelLarge,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 232.h,
                                    width: 166.h,
                                    margin: EdgeInsets.only(left: 20.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.h,
                                      vertical: 16.h,
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          ImageConstant.imgGroup100,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Container(
                                          width: double.maxFinite,
                                          margin: EdgeInsets.only(bottom: 2.h),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "lbl_road_helmet".tr,
                                                style:
                                                    theme.textTheme.labelLarge,
                                              ),
                                              Text(
                                                "lbl_smith_trade".tr,
                                                style:
                                                    theme.textTheme.titleSmall,
                                              ),
                                              Text(
                                                "lbl_120".tr,
                                                style:
                                                    theme.textTheme.labelLarge,
                                              )
                                            ],
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgHeart24Outline,
                                          height: 24.h,
                                          width: 26.h,
                                          alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(right: 6.h),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgCobiKrumholzM124x116,
                                          height: 124.h,
                                          width: 118.h,
                                          alignment: Alignment.topCenter,
                                          margin: EdgeInsets.only(top: 12.h),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    width: 166.h,
                                    margin: EdgeInsets.only(left: 20.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.h,
                                      vertical: 10.h,
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          ImageConstant.imgItems9,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 6.h),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgHeart24OutlineWhiteA70001,
                                          height: 24.h,
                                          width: 26.h,
                                          alignment: Alignment.centerRight,
                                        ),
                                        SizedBox(height: 12.h),
                                        Container(
                                          height: 88.h,
                                          width: double.maxFinite,
                                          margin: EdgeInsets.only(
                                            left: 6.h,
                                            right: 4.h,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: SizedBox(
                                                  width: double.maxFinite,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      SizedBox(
                                                        width: double.maxFinite,
                                                        child: Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        4.h),
                                                            child: Row(
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      ImageFiltered(
                                                                    imageFilter:
                                                                        ImageFilter
                                                                            .blur(
                                                                      sigmaX:
                                                                          2.0,
                                                                      sigmaY:
                                                                          2.0,
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          4.h,
                                                                      width:
                                                                          50.h,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: appTheme
                                                                            .black900
                                                                            .withOpacity(0.1),
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                          24.h,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width:
                                                                        10.h),
                                                                SizedBox(
                                                                    width:
                                                                        10.h),
                                                                Expanded(
                                                                  child:
                                                                      ImageFiltered(
                                                                    imageFilter:
                                                                        ImageFilter
                                                                            .blur(
                                                                      sigmaX:
                                                                          2.0,
                                                                      sigmaY:
                                                                          2.0,
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          4.h,
                                                                      width:
                                                                          52.h,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: appTheme
                                                                            .black900
                                                                            .withOpacity(0.1),
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                          26.h,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRobertByeTg36,
                                                height: 88.h,
                                                width: double.maxFinite,
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 30.h),
                                        Text(
                                          "lbl_mountain_bike".tr,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                        Text(
                                          "msg_pilot_chromoly".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                        Text(
                                          "lbl_1_999_99".tr,
                                          style: theme.textTheme.labelLarge,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle24,
                                  height: 102.h,
                                  width: double.maxFinite,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup102,
                                  height: 60.h,
                                  width: 62.h,
                                  radius: BorderRadius.circular(
                                    10.h,
                                  ),
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 16.h),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildTopNavigation(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "msg_choose_your_bike".tr,
        margin: EdgeInsets.only(left: 35.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.only(
            top: 6.h,
            right: 23.h,
            bottom: 6.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildElectricBikeSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 38.h,
      ),
      child: Column(
        children: [
          Container(
            height: 240.h,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 24.h,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup102,
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgElectric20bicycleI05,
                  height: 152.h,
                  width: double.maxFinite,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 6.h),
                ),
                Text(
                  "lbl_30_off".tr,
                  style: theme.textTheme.headlineMedium,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
