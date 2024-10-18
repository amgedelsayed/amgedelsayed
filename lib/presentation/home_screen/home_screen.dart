import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'bloc/home_bloc.dart';
import 'home_initial_page.dart';
import 'models/home_model.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
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
                  Expanded(
                    child: Navigator(
                      key: navigatorKey,
                      initialRoute: AppRoutes.homeInitialPage,
                      onGenerateRoute: (routeSetting) => PageRouteBuilder(
                        pageBuilder: (ctx, ani, ani1) =>
                            getCurrentPage(context, routeSetting.name!),
                        transitionDuration: Duration(seconds: 0),
                      ),
                    ),
                  ),
                  SizedBox(height: 4.h)
                ],
              ),
            ),
            bottomNavigationBar: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: 20.h,
                right: 34.h,
                bottom: 4.h,
              ),
              child: _buildBottomNavigation(context),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {},
      ),
    );
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeInitialPage:
        return HomeInitialPage.builder(context);
      default:
        return HomeInitialPage.builder(context);
    }
  }
}
