part of 'navigation_bloc.dart';

@immutable
class NavigationState {
  final int tabIndex;

  NavigationState({this.tabIndex = 1});

  NavigationState copyWith({int? tabIndex}) => NavigationState(
        tabIndex: tabIndex ?? this.tabIndex,
      );
}
