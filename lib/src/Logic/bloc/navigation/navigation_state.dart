part of 'navigation_bloc.dart';

@immutable
class NavigationState {
  final int tabIndex;

  const NavigationState({this.tabIndex = 0});

  NavigationState copyWith({int? tabIndex}) => NavigationState(
        tabIndex: tabIndex ?? this.tabIndex,
      );
}
