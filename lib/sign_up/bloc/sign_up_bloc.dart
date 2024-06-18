import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:food_delivery_app/sign_up/bloc/sign_up_event.dart';
import 'package:food_delivery_app/sign_up/bloc/sign_up_state.dart';
import 'package:food_delivery_app/sign_up/controller/sign_up_controller.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(this.signUpController) : super(const SignUpState()) {
    on<SignUpInitiated>(
      _onSignUpInitiated,
    );
    on<SignUpSubmitted>(
      _onSignUpSubmitted,
    );
  }
  final SignUpController signUpController;

  FutureOr<void> _onSignUpInitiated(
    SignUpInitiated event,
    Emitter<SignUpState> emit,
  ) {}

  Future<void> _onSignUpSubmitted(
    SignUpSubmitted event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      await signUpController.signUp(
        event.account,
        event.password,
        event.address,
        event.phoneNumber,
      );
    } catch (error) {
      // Handle error
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }
}
