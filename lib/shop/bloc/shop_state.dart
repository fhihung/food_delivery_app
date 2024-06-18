import 'package:food_delivery_app/models/m_drink.dart';
import 'package:food_delivery_app/models/m_food.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_state.freezed.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState({
    @Default(<MDrink>[]) List<MDrink> fetchedDrinks,
    @Default(<MFood>[]) List<MFood> fetchedFoods,
    @Default('') String errorMessage,
  }) = _ShopState;
}
