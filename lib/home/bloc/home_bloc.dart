import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:food_delivery_app/app/storage_service.dart';
import 'package:food_delivery_app/home/bloc/home_event.dart';
import 'package:food_delivery_app/home/bloc/home_state.dart';
import 'package:food_delivery_app/home/controllers/home_controller.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this.homeController,
    this.storageService,
  ) : super(const HomeState()) {
    on<HomeInitiated>(
      _onHomeInitiated,
    );
    on<NewProductsFetched>(
      _onNewProductsFetched,
    );
    on<CategoryProductsFetched>(
      _onCategoryProductsFetched,
    );
  }
  final StorageService storageService;

  final HomeController homeController;
  FutureOr<void> _onHomeInitiated(
    HomeInitiated event,
    Emitter<HomeState> emit,
  ) async {
    final accessToken = await storageService.getToken();
    if (accessToken != null) {
      final user = await homeController.fetchUser(accessToken);
      emit(state.copyWith(user: user));
    }
  }

  FutureOr<void> _onNewProductsFetched(
    NewProductsFetched event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final newProducts = await homeController.fetchNewProducts();
      emit(state.copyWith(newProducts: newProducts, isLoading: false));
    } catch (error) {
      emit(state.copyWith(isLoading: false));
    }
  }

  FutureOr<void> _onCategoryProductsFetched(
    CategoryProductsFetched event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final categoryProducts = await homeController.fetchCategories();
      emit(state.copyWith(categoryProducts: categoryProducts, isLoading: false));
    } catch (error) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
