import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

// Define Events
// Define States

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(const BottomNavigationState(selectedIndex: 0)) {
    on<BottomNavigationIndexChanged>((event, emit) {
      emit(BottomNavigationState(selectedIndex: event.index));
    });
  }
}
