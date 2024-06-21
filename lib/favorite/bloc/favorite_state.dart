import 'package:food_delivery_app/models/m_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    MUser? user,
  }) = _FavoriteState;
}
