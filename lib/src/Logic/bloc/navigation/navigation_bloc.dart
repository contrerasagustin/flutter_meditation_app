import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState()) {
    on<ChangeIndex>(_onChangeIndex);
  }

  void _onChangeIndex(ChangeIndex event, Emitter<NavigationState> emit) {
    emit(const NavigationState().copyWith(tabIndex: event.newIndex));
  }
}
