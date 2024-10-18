import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/detail_screen/detail_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/login_for_bike_store_screen/login_for_bike_store_screen.dart';
import '../presentation/shopping_bag_screen/shopping_bag_screen.dart';

class AppRoutes {
  static const String loginForBikeStoreScreen = '/login_for_bike_store_screen';

  static const String homeScreen = '/home_screen';

  static const String homeInitialPage = '/home_initial_page';

  static const String detailScreen = '/detail_screen';

  static const String detailspecificaTabPage = '/detailspecifica_tab_page';

  static const String shoppingBagScreen = '/shopping_bag_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        loginForBikeStoreScreen: LoginForBikeStoreScreen.builder,
        homeScreen: HomeScreen.builder,
        detailScreen: DetailScreen.builder,
        shoppingBagScreen: ShoppingBagScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoginForBikeStoreScreen.builder
      };
}
