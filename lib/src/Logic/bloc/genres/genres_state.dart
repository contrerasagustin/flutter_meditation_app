part of 'genres_bloc.dart';

// ignore: constant_identifier_names
enum Genres { All, Insomnia, Depression, Baby_Sleep }

class GenresState {
  final Genres genres;

  GenresState({this.genres = Genres.All});

  GenresState copyWith({
    Genres? genres,
  }) =>
      GenresState(
        genres: genres ?? this.genres,
      );
}
