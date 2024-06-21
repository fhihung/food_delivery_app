import 'package:food_delivery_app/models/m_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_state.freezed.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    MUser? user,
  }) = _SettingState;
}
