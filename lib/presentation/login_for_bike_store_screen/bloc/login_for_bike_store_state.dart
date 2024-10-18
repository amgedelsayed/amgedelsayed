part of 'login_for_bike_store_bloc.dart';

/// Represents the state of LoginForBikeStore in the application.

// ignore_for_file: must_be_immutable
class LoginForBikeStoreState extends Equatable {
  LoginForBikeStoreState(
      {this.nametwoController,
      this.emailController,
      this.passwordthreeController,
      this.isShowPassword = true,
      this.iagreetotheterm = false,
      this.loginForBikeStoreModelObj});

  TextEditingController? nametwoController;

  TextEditingController? emailController;

  TextEditingController? passwordthreeController;

  LoginForBikeStoreModel? loginForBikeStoreModelObj;

  bool isShowPassword;

  bool iagreetotheterm;

  @override
  List<Object?> get props => [
        nametwoController,
        emailController,
        passwordthreeController,
        isShowPassword,
        iagreetotheterm,
        loginForBikeStoreModelObj
      ];
  LoginForBikeStoreState copyWith({
    TextEditingController? nametwoController,
    TextEditingController? emailController,
    TextEditingController? passwordthreeController,
    bool? isShowPassword,
    bool? iagreetotheterm,
    LoginForBikeStoreModel? loginForBikeStoreModelObj,
  }) {
    return LoginForBikeStoreState(
      nametwoController: nametwoController ?? this.nametwoController,
      emailController: emailController ?? this.emailController,
      passwordthreeController:
          passwordthreeController ?? this.passwordthreeController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      iagreetotheterm: iagreetotheterm ?? this.iagreetotheterm,
      loginForBikeStoreModelObj:
          loginForBikeStoreModelObj ?? this.loginForBikeStoreModelObj,
    );
  }
}
