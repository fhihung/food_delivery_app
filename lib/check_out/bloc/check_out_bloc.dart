import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:food_delivery_app/app/storage_service.dart';
import 'package:food_delivery_app/check_out/bloc/check_out_event.dart';
import 'package:food_delivery_app/check_out/bloc/check_out_state.dart';
import 'package:rxdart/rxdart.dart';

import '../controllers/check_out_controller.dart';

class CheckOutBloc extends Bloc<CheckOutEvent, CheckOutState> {
  CheckOutBloc() : super(const CheckOutState()) {
    on<CheckOutInitiated>(
      _onCheckOutInitiated,
    );
    on<CheckOutFetched>(
      _onCheckOutFetched,
    );
  }

  final StorageService storageService = StorageService();
  final CheckOutController checkOutController = CheckOutController();
  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }

  FutureOr<void> _onCheckOutInitiated(
    CheckOutInitiated event,
    Emitter<CheckOutState> emit,
  ) async {
    final accessToken = await storageService.getToken();
    if (accessToken != null) {
      await storageService.getUserId();
    }
  }

  FutureOr<void> _onCheckOutFetched(
    CheckOutFetched event,
    Emitter<CheckOutState> emit,
  ) async {
    final accessToken = await storageService.getToken();
    if (accessToken != null) {
      final userId = await storageService.getUserId();
      if (userId != null) {
        final cart = await checkOutController.fetchCart(int.parse(userId));
        emit(state.copyWith(cartProducts: cart));
      }
    }
  }
}
