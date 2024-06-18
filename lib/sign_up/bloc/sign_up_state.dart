import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

enum SignUpStatus { initial, loading, success, failure }

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(SignUpStatus.initial) SignUpStatus status,
    @Default('') String errorMessage,
  }) = _SignUpState;
}
