// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_architecture_with_flutter/src/core/utils/shared/enums/request_state_enum.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movie.dart';
import 'package:equatable/equatable.dart';

class MoviesStates extends Equatable {
  List<Movie> nowPlayingMovies;
  RequestState nowPlayingMoviesState;
  String message;
  MoviesStates({
    this.nowPlayingMovies = const [],
    this.nowPlayingMoviesState = RequestState.isLoading,
    this.message = '',
  });

  @override
  List<Object?> get props => [
        nowPlayingMovies,
        nowPlayingMoviesState,
        message,
      ];
}
