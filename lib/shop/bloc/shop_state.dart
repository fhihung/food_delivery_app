import 'package:food_delivery_app/models/m_brand.dart';
import 'package:food_delivery_app/models/m_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_state.freezed.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState({
    @Default(<MProduct>[]) List<MProduct> fetchedRices,
    @Default(<MProduct>[]) List<MProduct> fetchedNoodles,
    @Default(<MProduct>[]) List<MProduct> fetchedDrinks,
    @Default(<MProduct>[]) List<MProduct> fetchedJunkFoods,
    @Default(<MBrand>[]) List<MBrand> brands,
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
  }) = _ShopState;
}
