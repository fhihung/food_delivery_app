part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationEvent extends Equatable {
  const BottomNavigationEvent();

  @override
  List<Object> get props => [];
}

class BottomNavigationIndexChanged extends BottomNavigationEvent {
  const BottomNavigationIndexChanged({required this.index});
  final int index;

  @override
  List<Object> get props => [index];
}
