import 'package:equatable/equatable.dart';

abstract class MovieDetailsEvents extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetMovieDetailsEvent extends MovieDetailsEvents {
  final int movieId;

  GetMovieDetailsEvent({
    required this.movieId,
  });

  @override
  List<Object?> get props => [
        movieId,
      ];
}

class GetMovieRecommendationsEvent extends MovieDetailsEvents {
  final int movieId;

  GetMovieRecommendationsEvent({
    required this.movieId,
  });

  @override
  List<Object?> get props => [
        movieId,
      ];
}
