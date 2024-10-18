import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/detail_bloc.dart';
import 'models/detailspecifica_tab_model.dart';

class DetailspecificaTabPage extends StatefulWidget {
  const DetailspecificaTabPage({Key? key})
      : super(
          key: key,
        );

  @override
  DetailspecificaTabPageState createState() => DetailspecificaTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DetailBloc>(
      create: (context) => DetailBloc(DetailState(
        detailspecificaTabModelObj: DetailspecificaTabModel(),
      ))
        ..add(DetailInitialEvent()),
      child: DetailspecificaTabPage(),
    );
  }
}

class DetailspecificaTabPageState extends State<DetailspecificaTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 28.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 20.h,
              right: 38.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_peugeot_lr012".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 8.h),
                Text(
                  "msg_the_lr01_uses_the".tr,
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                )
              ],
            ),
          ),
          SizedBox(height: 22.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 28.h,
            ),
            decoration: BoxDecoration(
              color: appTheme.blueGray90005,
              borderRadius: BorderRadiusStyle.roundedBorder50,
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.primaryContainer,
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(
                    0,
                    -10,
                  ),
                )
              ],
            ),
            width: double.maxFinite,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 18.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_1_999_99".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        CustomOutlinedButton(
                          height: 44.h,
                          width: 160.h,
                          text: "lbl_add_to_cart".tr,
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientOnPrimaryContainerToIndigoATL10Decoration,
                          buttonTextStyle: CustomTextStyles.titleSmallMedium,
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
    );
  }
}
