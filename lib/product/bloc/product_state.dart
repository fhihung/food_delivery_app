import 'package:food_delivery_app/models/m_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState(
      {@Default('') String errorMessage,
      @Default(false) bool isLoading,
      @Default(<MProduct>[]) List<MProduct> productsByBrandId}) = _ProductState;
}
