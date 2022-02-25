part of 'navigation_bloc.dart';

@immutable
abstract class NavigationEvent {}

class ChangeIndex extends NavigationEvent {
  final int newIndex;

  ChangeIndex(this.newIndex);
}
