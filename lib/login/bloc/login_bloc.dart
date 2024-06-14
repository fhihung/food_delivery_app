import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:food_delivery_app/app/router.dart';
import 'package:food_delivery_app/login/bloc/login_event.dart';
import 'package:food_delivery_app/login/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
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
    on<CreateAccountButtonPressed>(
      _onCreateAccountButtonPressed,
    );
    on<ForgotPasswordButtonPressed>(
      _onForgotPasswordButtonPressed,
    );
    on<SignInWithGooglePressed>(
      _onSignInWithGooglePressed,
    );
    on<SignInWithFacebookPressed>(
      _onSignInWithFacebookPressed,
    );
  }
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
  ) {}

  FutureOr<void> _onCreateAccountButtonPressed(
    CreateAccountButtonPressed event,
    Emitter<LoginState> emit,
  ) {}

  FutureOr<void> _onForgotPasswordButtonPressed(
    ForgotPasswordButtonPressed event,
    Emitter<LoginState> emit,
  ) {
    router.go('/forgot_password');
  }

  FutureOr<void> _onSignInWithGooglePressed(
    SignInWithGooglePressed event,
    Emitter<LoginState> emit,
  ) {}

  FutureOr<void> _onSignInWithFacebookPressed(
    SignInWithFacebookPressed event,
    Emitter<LoginState> emit,
  ) {}
}
