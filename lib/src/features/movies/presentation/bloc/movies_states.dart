import 'package:equatable/equatable.dart';

import 'package:clean_architecture_with_flutter/src/core/utils/shared/enums/request_state_enum.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movie.dart';

class MoviesStates extends Equatable {
  List<Movie> nowPlayingMovies;
  RequestState nowPlayingMoviesState;
  String nowPlayingErrorMessage;

  List<Movie> popularMovies;
  RequestState popularMoviesState;
  String popularErrorMessage;

  List<Movie> topRatedMovies;
  RequestState topRatedMoviesState;
  String topRatedErrorMessage;

  MoviesStates({
    this.nowPlayingMovies = const [],
    this.nowPlayingMoviesState = RequestState.isLoading,
    this.nowPlayingErrorMessage = '',
    this.popularMovies = const [],
    this.popularMoviesState = RequestState.isLoading,
    this.popularErrorMessage = '',
    this.topRatedMovies = const [],
    this.topRatedMoviesState = RequestState.isLoading,
    this.topRatedErrorMessage = '',
  });

  @override
  List<Object?> get props => [
        nowPlayingMovies,
        nowPlayingMoviesState,
        nowPlayingErrorMessage,
        popularMovies,
        popularMoviesState,
        popularErrorMessage,
        topRatedMovies,
        topRatedMoviesState,
        topRatedErrorMessage,
      ];

  MoviesStates copyWith({
    List<Movie>? nowPlayingMovies,
    RequestState? nowPlayingMoviesState,
    String? nowPlayingErrorMessage,
    List<Movie>? popularMovies,
    RequestState? popularMoviesState,
    String? popularErrorMessage,
    List<Movie>? topRatedMovies,
    RequestState? topRatedMoviesState,
    String? topRatedErrorMessage,
  }) {
    return MoviesStates(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlayingMoviesState:
          nowPlayingMoviesState ?? this.nowPlayingMoviesState,
      nowPlayingErrorMessage:
          nowPlayingErrorMessage ?? this.nowPlayingErrorMessage,
      popularMovies: popularMovies ?? this.popularMovies,
      popularMoviesState: popularMoviesState ?? this.popularMoviesState,
      popularErrorMessage: popularErrorMessage ?? this.popularErrorMessage,
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedMoviesState: topRatedMoviesState ?? this.topRatedMoviesState,
      topRatedErrorMessage: topRatedErrorMessage ?? this.topRatedErrorMessage,
    );
  }
}
