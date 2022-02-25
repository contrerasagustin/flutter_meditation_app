part of 'genres_bloc.dart';

@immutable
abstract class GenresEvent {}

class ChangeGenres extends GenresEvent {
  final Genres select;
  ChangeGenres(this.select);
}
