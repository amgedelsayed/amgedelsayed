import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/detail_bloc.dart';
import 'detailspecifica_tab_page.dart';
import 'models/detail_model.dart';
import 'models/imageslider_item_model.dart';
import 'widgets/imageslider_item_widget.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DetailScreenState createState() => DetailScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DetailBloc>(
      create: (context) => DetailBloc(DetailState(
        detailModelObj: DetailModel(),
      ))
        ..add(DetailInitialEvent()),
      child: DetailScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class DetailScreenState extends State<DetailScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: 844.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 640.h,
                      margin: EdgeInsets.only(left: 8.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 60.h,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup117,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              height: 292.h,
                              width: 320.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  _buildImageSlider(context),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: _buildTopNavigationBar(context),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 4.h,
                            margin: EdgeInsets.only(bottom: 228.h),
                            child: AnimatedSmoothIndicator(
                              activeIndex: 0,
                              count: 3,
                              effect: ScrollingDotsEffect(
                                spacing: 7.17,
                                activeDotColor: appTheme.whiteA70001,
                                dotColor: appTheme.whiteA70001.withOpacity(0.2),
                                dotHeight: 4.h,
                                dotWidth: 4.h,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(right: 18.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder30,
                      gradient: LinearGradient(
                        begin: Alignment(0.06, -0.02),
                        end: Alignment(0.51, 0.61),
                        colors: [
                          appTheme.blueGray80002,
                          appTheme.blueGray90001
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 30.h),
                        _buildDescriptionTabs(context),
                        _buildProductDetailsView(context)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildImageSlider(BuildContext context) {
    return BlocBuilder<DetailBloc, DetailState>(
      builder: (context, state) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 292.h,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              context
                  .read<DetailBloc>()
                  .add(ChangeSliderIndexEvent(value: index));
            },
          ),
          itemCount: state.detailModelObj?.imagesliderItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            ImagesliderItemModel model =
                state.detailModelObj?.imagesliderItemList[index] ??
                    ImagesliderItemModel();
            return ImagesliderItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTopNavigationBar(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomAppBar(
        height: 44.h,
        leadingWidth: 44.h,
        leading: AppbarLeadingIconbutton(
          imagePath: ImageConstant.imgArrowLeft,
          onTap: () {
            onTapArrowleftone(context);
          },
        ),
        centerTitle: true,
        title: AppbarSubtitle(
          text: "lbl_road_bike2".tr,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionTabs(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 16.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: appTheme.whiteA70001.withOpacity(0.6),
              labelStyle: TextStyle(
                fontSize: 15.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelColor: appTheme.blue40002,
              unselectedLabelStyle: TextStyle(
                fontSize: 15.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
              tabs: [
                Tab(
                  height: 42,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(right: 6.h),
                    decoration: tabIndex == 0
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                            boxShadow: [
                                BoxShadow(
                                  color: appTheme.blueGray900,
                                ),
                                BoxShadow(
                                  color: appTheme.blueGray90002,
                                  spreadRadius: 0,
                                  blurRadius: 8,
                                  offset: Offset(
                                    4,
                                    4,
                                  ),
                                )
                              ])
                        : BoxDecoration(
                            color: appTheme.blueGray800,
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.blueGray90004,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  4,
                                  4,
                                ),
                              )
                            ],
                          ),
                    child: Text(
                      "lbl_description".tr,
                    ),
                  ),
                ),
                Tab(
                  height: 42,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 6.h),
                    decoration: tabIndex == 1
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                            boxShadow: [
                                BoxShadow(
                                  color: appTheme.blueGray900,
                                ),
                                BoxShadow(
                                  color: appTheme.blueGray90002,
                                  spreadRadius: 0,
                                  blurRadius: 8,
                                  offset: Offset(
                                    4,
                                    4,
                                  ),
                                )
                              ])
                        : BoxDecoration(
                            color: appTheme.blueGray800,
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.blueGray90004,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  4,
                                  4,
                                ),
                              )
                            ],
                          ),
                    child: Text(
                      "lbl_specification".tr,
                    ),
                  ),
                )
              ],
              indicatorColor: Colors.transparent,
              onTap: (index) {
                tabIndex = index;
                setState(() {});
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductDetailsView(BuildContext context) {
    return SizedBox(
      height: 374.h,
      child: TabBarView(
        controller: tabviewController,
        children: [Container(), DetailspecificaTabPage.builder(context)],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
