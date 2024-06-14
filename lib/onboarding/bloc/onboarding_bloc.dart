import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/app/router.dart';
import 'package:food_delivery_app/onboarding/bloc/onboarding_event.dart';
import 'package:food_delivery_app/onboarding/bloc/onboarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc()
      : super(
          OnBoardingState(
            pageController: PageController(),
          ),
        ) {
    on<OnBoardingPageChanged>(
      _onOnBoardingPageChanged,
    );
    on<NextPage>(
      _onNextPage,
    );
    on<SkipPressed>(
      _onSkipPressed,
    );
  }

  FutureOr<void> _onOnBoardingPageChanged(
    OnBoardingPageChanged event,
    Emitter<OnBoardingState> emit,
  ) {
    emit(state.copyWith(currentPage: event.id));
  }

  FutureOr<void> _onNextPage(
    NextPage event,
    Emitter<OnBoardingState> emit,
  ) {
    final newPage = state.currentPage + 1;

    if (newPage < 3) {
      emit(state.copyWith(currentPage: newPage));
      state.pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.linearToEaseOut,
      );
    } else {
      router.go('/login');
    }
  }

  FutureOr<void> _onSkipPressed(
    SkipPressed event,
    Emitter<OnBoardingState> emit,
  ) {
    router.go('/login');
  }
}