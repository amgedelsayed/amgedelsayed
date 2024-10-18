import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/login_for_bike_store_bloc.dart';
import 'models/login_for_bike_store_model.dart';

class LoginForBikeStoreScreen extends StatelessWidget {
  const LoginForBikeStoreScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginForBikeStoreBloc>(
      create: (context) => LoginForBikeStoreBloc(LoginForBikeStoreState(
        loginForBikeStoreModelObj: LoginForBikeStoreModel(),
      ))
        ..add(LoginForBikeStoreInitialEvent()),
      child: LoginForBikeStoreScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 20.h,
                top: 56.h,
                right: 20.h,
              ),
              child: Column(
                children: [
                  _buildGreetingSection(context),
                  SizedBox(height: 36.h),
                  _buildSocialLoginButtons(context),
                  SizedBox(height: 24.h),
                  _buildSeparator(context),
                  SizedBox(height: 20.h),
                  _buildNameInput(context),
                  SizedBox(height: 18.h),
                  _buildEmailInput(context),
                  SizedBox(height: 18.h),
                  _buildPasswordInput(context),
                  SizedBox(height: 26.h),
                  _buildTermsAgreement(context),
                  SizedBox(height: 32.h),
                  CustomElevatedButton(
                    text: "lbl_log_in".tr,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      right: 10.h,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  _buildSignupPrompt(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGreetingSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_hey_hello".tr,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 14.h),
          Container(
            width: 306.h,
            margin: EdgeInsets.only(left: 2.h),
            child: Text(
              "msg_enter_your_credentials".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeWhiteA7000119,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSocialLoginButtons(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 8.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomOutlinedButton(
            width: 196.h,
            text: "lbl_google".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 32.h,
                width: 32.h,
                fit: BoxFit.contain,
              ),
            ),
          ),
          CustomOutlinedButton(
            width: 196.h,
            text: "lbl_apple".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgApple,
                height: 30.h,
                width: 26.h,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeparator(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 194.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            decoration: BoxDecoration(
              color: appTheme.blueGray90003,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_or".tr,
                  style: CustomTextStyles.titleLargeWhiteA70001,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNameInput(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 10.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_name".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 6.h),
          BlocSelector<LoginForBikeStoreBloc, LoginForBikeStoreState,
              TextEditingController?>(
            selector: (state) => state.nametwoController,
            builder: (context, nametwoController) {
              return CustomTextFormField(
                controller: nametwoController,
                contentPadding: EdgeInsets.all(12.h),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 10.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_email_address".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 8.h),
          BlocSelector<LoginForBikeStoreBloc, LoginForBikeStoreState,
              TextEditingController?>(
            selector: (state) => state.emailController,
            builder: (context, emailController) {
              return CustomTextFormField(
                controller: emailController,
                contentPadding: EdgeInsets.all(12.h),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordInput(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 10.h,
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_password".tr,
                  style: theme.textTheme.titleLarge,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "msg_forgot_password".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6.h),
          BlocBuilder<LoginForBikeStoreBloc, LoginForBikeStoreState>(
            builder: (context, state) {
              return CustomTextFormField(
                controller: state.passwordthreeController,
                textInputAction: TextInputAction.done,
                suffix: InkWell(
                  onTap: () {
                    context.read<LoginForBikeStoreBloc>().add(
                        ChangePasswordVisibilityEvent(
                            value: !state.isShowPassword));
                  },
                  child: Container(
                    margin: EdgeInsets.all(16.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 16.h,
                      width: 20.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 48.h,
                ),
                obscureText: state.isShowPassword,
                contentPadding: EdgeInsets.fromLTRB(12.h, 16.h, 16.h, 16.h),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTermsAgreement(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocSelector<LoginForBikeStoreBloc, LoginForBikeStoreState, bool?>(
            selector: (state) => state.iagreetotheterm,
            builder: (context, iagreetotheterm) {
              return CustomCheckboxButton(
                text: "msg_i_agree_to_the_terms".tr,
                value: iagreetotheterm,
                onChange: (value) {
                  context
                      .read<LoginForBikeStoreBloc>()
                      .add(ChangeCheckBoxEvent(value: value));
                },
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignupPrompt(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_don_t_have_an_account2".tr,
                  style: CustomTextStyles.bodyLargeWhiteA70001,
                ),
                TextSpan(
                  text: "lbl_sign_up".tr,
                  style: CustomTextStyles.titleMediumWorkSansPrimary,
                )
              ],
            ),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}
