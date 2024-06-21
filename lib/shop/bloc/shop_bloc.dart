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
    on<RicesFetched>(
      _onRicesFetched,
    );

    on<NoodlesFetched>(
      _onNoodlesFetched,
    );
    on<DrinksFetched>(
      _onDrinksFetched,
    );
    on<JunkFoodsFetched>(
      _onJunkFoodsFetched,
    );
    on<BrandsFetched>(
      _onBrandsFetched,
    );
  }
  final ShopController shopController;

  FutureOr<void> _onShopInitiated(
    ShopInitiated event,
    Emitter<ShopState> emit,
  ) async {
    // try {
    //   final drinks = await shopController.fetchDrinks();
    //   final foods = await shopController.fetchNoodles();
    //   emit(state.copyWith(fetchedDrinks: drinks, fetchedFoods: foods));
    // } catch (error) {
    //   emit(state.copyWith(errorMessage: error.toString()));
    // }
  }

  Future<void> _onRicesFetched(
    RicesFetched event,
    Emitter<ShopState> emit,
  ) async {
    try {
      final rices = await shopController.fetchRices();
      emit(state.copyWith(fetchedRices: rices));
    } catch (error) {
      // Handle error
    }
  }

  Future<void> _onNoodlesFetched(
    NoodlesFetched event,
    Emitter<ShopState> emit,
  ) async {
    try {
      final noodles = await shopController.fetchNoodles();
      emit(state.copyWith(fetchedNoodles: noodles));
    } catch (error) {
      // Handle error
    }
  }

  Future<void> _onDrinksFetched(
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

  Future<void> _onJunkFoodsFetched(
    JunkFoodsFetched event,
    Emitter<ShopState> emit,
  ) async {
    try {
      final junkFoods = await shopController.fetchJunkFoods();
      emit(state.copyWith(fetchedJunkFoods: junkFoods));
    } catch (error) {
      // Handle error
    }
  }

  Future<void> _onBrandsFetched(
    BrandsFetched event,
    Emitter<ShopState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final brands = await shopController.fetchBrands();
      emit(state.copyWith(brands: brands, isLoading: false));
    } catch (error) {
      emit(state.copyWith(isLoading: true));
      // Handle error
    }
  }
}
