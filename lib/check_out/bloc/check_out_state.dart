import 'package:food_delivery_app/models/m_cart.dart';
import 'package:food_delivery_app/models/m_product.dart';
import 'package:food_delivery_app/models/m_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_out_state.freezed.dart';

@freezed
class CheckOutState with _$CheckOutState {
  const factory CheckOutState({
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    MUser? user,
    @Default(<MProduct>[]) List<MProduct> products,
    @Default(<MCart>[]) List<MCart> cartProducts,
  }) = _CheckOutState;
}
