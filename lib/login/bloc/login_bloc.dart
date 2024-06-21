import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/common_bottom_navigation.dart';
import 'package:food_delivery_app/login/bloc/login_event.dart';
import 'package:food_delivery_app/login/bloc/login_state.dart';
import 'package:food_delivery_app/login/controller/login_controller.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this.loginController) : super(const LoginState()) {
    on<LoginInitiated>(
      _onLoginInitiated,
    );
    on<EyeSlashPressed>(
      _onEyeSlashPressed,
    );
    on<RememberMePressed>(
      _onRememberMePressed,
    );
    on<LoginButtonPressed>(
      _onLoginButtonPressed,
    );

    on<ForgotPasswordButtonPressed>(
      _onForgotPasswordButtonPressed,
    );
  }
  final LoginController loginController;
  FutureOr<void> _onLoginInitiated(
    LoginInitiated event,
    Emitter<LoginState> emit,
  ) {}
  FutureOr<void> _onEyeSlashPressed(
    EyeSlashPressed event,
    Emitter<LoginState> emit,
  ) {
    emit(
      state.copyWith(
        isShowPassword: !state.isShowPassword,
      ),
    );
  }

  FutureOr<void> _onRememberMePressed(
    RememberMePressed event,
    Emitter<LoginState> emit,
  ) {
    emit(
      state.copyWith(
        isRememberMe: event.isCheck,
      ),
    );
  }

  FutureOr<void> _onLoginButtonPressed(
    LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    try {
      // Call login API
      final accessToken = await loginController.login(
        event.email,
        event.password,
        event.context,
      );
      // Save token
      emit(state.copyWith(token: accessToken));
      await Navigator.pushReplacement(
        event.context,
        MaterialPageRoute<void>(
          builder: (context) => const CommonBottomNavigation(),
        ),
      );
    } catch (error) {}
  }

  FutureOr<void> _onForgotPasswordButtonPressed(
    ForgotPasswordButtonPressed event,
    Emitter<LoginState> emit,
  ) {}
}
