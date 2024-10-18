import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/login_for_bike_store_model.dart';
part 'login_for_bike_store_event.dart';
part 'login_for_bike_store_state.dart';

/// A bloc that manages the state of a LoginForBikeStore according to the event that is dispatched to it.
class LoginForBikeStoreBloc
    extends Bloc<LoginForBikeStoreEvent, LoginForBikeStoreState> {
  LoginForBikeStoreBloc(LoginForBikeStoreState initialState)
      : super(initialState) {
    on<LoginForBikeStoreInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _onInitialize(
    LoginForBikeStoreInitialEvent event,
    Emitter<LoginForBikeStoreState> emit,
  ) async {
    emit(
      state.copyWith(
        nametwoController: TextEditingController(),
        emailController: TextEditingController(),
        passwordthreeController: TextEditingController(),
        isShowPassword: true,
        iagreetotheterm: false,
      ),
    );
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LoginForBikeStoreState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<LoginForBikeStoreState> emit,
  ) {
    emit(state.copyWith(
      iagreetotheterm: event.value,
    ));
  }
}
