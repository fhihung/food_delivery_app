import 'package:food_delivery_app/models/m_cart.dart';
import 'package:food_delivery_app/models/m_product.dart';
import 'package:food_delivery_app/models/m_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    MUser? user,
    @Default(<MProduct>[]) List<MProduct> products,
    @Default(<MCart>[]) List<MCart> cartProducts,
  }) = _CartState;
}
