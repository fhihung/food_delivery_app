import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

abstract class LoginEvent {
  const LoginEvent();
}

@freezed
class LoginInitiated extends LoginEvent with _$LoginInitiated {
  const factory LoginInitiated() = _LoginInitiated;
}

@freezed
class EyeSlashPressed extends LoginEvent with _$EyeSlashPressed {
  const factory EyeSlashPressed() = _EyeSlashPressed;
}

@freezed
class RememberMePressed extends LoginEvent with _$RememberMePressed {
  const factory RememberMePressed({required bool isCheck}) = _RememberMePressed;
}

@freezed
class LoginButtonPressed extends LoginEvent with _$LoginButtonPressed {
  const factory LoginButtonPressed() = _LoginButtonPressed;
}

@freezed
class CreateAccountButtonPressed extends LoginEvent with _$CreateAccountButtonPressed {
  const factory CreateAccountButtonPressed() = _CreateAccountButtonPressed;
}

@freezed
class ForgotPasswordButtonPressed extends LoginEvent with _$ForgotPasswordButtonPressed {
  const factory ForgotPasswordButtonPressed() = _ForgotPasswordButtonPressed;
}

@freezed
class SignInWithGooglePressed extends LoginEvent with _$SignInWithGooglePressed {
  const factory SignInWithGooglePressed() = _SignInWithGooglePressed;
}

@freezed
class SignInWithFacebookPressed extends LoginEvent with _$SignInWithFacebookPressed {
  const factory SignInWithFacebookPressed() = _SignInWithFacebookPressed;
}
