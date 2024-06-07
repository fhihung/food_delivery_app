part of 'bottom_navigation_bloc.dart';

class BottomNavigationState extends Equatable {
  const BottomNavigationState({required this.selectedIndex});
  final int selectedIndex;

  @override
  List<Object> get props => [selectedIndex];
}
