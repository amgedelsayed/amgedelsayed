import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { MountainBike, Mountainbike }

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgAirplane,
      activeIcon: ImageConstant.imgAirplane,
      title: "Mountain Bike",
      type: BottomBarEnum.MountainBike,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMail,
      activeIcon: ImageConstant.imgMail,
      title: "Mountain Bike",
      type: BottomBarEnum.MountainBike,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCart,
      activeIcon: ImageConstant.imgCart,
      title: "Mountain Bike",
      type: BottomBarEnum.MountainBike,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMountainBike,
      activeIcon: ImageConstant.imgNavMountainBike,
      title: "lbl_mountain_bike".tr,
      type: BottomBarEnum.Mountainbike,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgDocTextFill,
      activeIcon: ImageConstant.imgDocTextFill,
      title: "Mountain Bike",
      type: BottomBarEnum.MountainBike,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76.h,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 34.h,
        bottom: 4.h,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 16.h,
              width: 28.h,
              color: Color(0XFFFFFFFF),
            ),
            activeIcon: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 15.89.h,
                  width: 14.85.h,
                  color: Color(0XFFFFFFFF),
                ),
                SizedBox(height: 3.25.h),
                Text(
                  bottomMenuList[index].title ?? "",
                  style: TextStyle(
                    color: Color(0X99FFFFFF),
                    fontSize: 13.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      required this.activeIcon,
      this.title,
      required this.type});

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
