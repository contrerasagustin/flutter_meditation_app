import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'genres_event.dart';
part 'genres_state.dart';

class GenresBloc extends Bloc<GenresEvent, GenresState> {
  GenresBloc() : super(GenresState()) {
    on<ChangeGenres>(_onChangeGenres);
  }

  void _onChangeGenres(ChangeGenres event, Emitter<GenresState> emit) {
    emit(GenresState().copyWith(genres: event.select));
  }
}
