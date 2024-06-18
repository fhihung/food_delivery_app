import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:food_delivery_app/shop/bloc/shop_event.dart';
import 'package:food_delivery_app/shop/bloc/shop_state.dart';
import 'package:food_delivery_app/shop/controller/shop_controller.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc(this.shopController) : super(const ShopState()) {
    on<ShopInitiated>(
      _onShopInitiated,
    );
    on<DrinksFetched>(
      _onFetchDrinks,
    );
    on<FoodsFetched>(
      _onFetchFoods,
    );
  }
  final ShopController shopController;

  FutureOr<void> _onShopInitiated(
    ShopInitiated event,
    Emitter<ShopState> emit,
  ) async {
    try {
      final drinks = await shopController.fetchDrinks();
      final foods = await shopController.fetchFoods();
      emit(state.copyWith(fetchedDrinks: drinks, fetchedFoods: foods));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  Future<void> _onFetchDrinks(
    DrinksFetched event,
    Emitter<ShopState> emit,
  ) async {
    try {
      final drinks = await shopController.fetchDrinks();
      emit(state.copyWith(fetchedDrinks: drinks));
    } catch (error) {
      // Handle error
    }
  }

  Future<void> _onFetchFoods(
    FoodsFetched event,
    Emitter<ShopState> emit,
  ) async {
    try {
      final foods = await shopController.fetchFoods();
      emit(state.copyWith(fetchedFoods: foods));
    } catch (error) {
      // Handle error
    }
  }
}
