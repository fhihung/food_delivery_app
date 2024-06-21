import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:food_delivery_app/app/storage_service.dart';
import 'package:food_delivery_app/favorite/bloc/favorite_event.dart';
import 'package:food_delivery_app/favorite/bloc/favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(const FavoriteState()) {
    on<FavoriteInitiated>(
      _onFavoriteInitiated,
    );
  }
  StorageService storageService = StorageService();

  FutureOr<void> _onFavoriteInitiated(
    FavoriteInitiated event,
    Emitter<FavoriteState> emit,
  ) async {}
}
