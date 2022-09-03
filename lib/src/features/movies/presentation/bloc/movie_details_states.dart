// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:clean_architecture_with_flutter/src/core/utils/shared/enums/request_state_enum.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movie_details.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movies_recommendation.dart';

class MovieDetailsStates extends Equatable {
  final MovieDetails? movieDetails;
  final RequestState movieDetailsState;
  final String movieDetailsErrorMsg;
  final List<MoviesRecommendation> moviesRecommendation;
  final RequestState moviesRecommendationState;
  final String moviesRecommendationErrorMsg;

  const MovieDetailsStates({
    this.moviesRecommendation = const [],
    this.moviesRecommendationState = RequestState.isLoading,
    this.moviesRecommendationErrorMsg = '',
    this.movieDetails,
    this.movieDetailsState = RequestState.isLoading,
    this.movieDetailsErrorMsg = '',
  });

  @override
  List<Object?> get props => [
        movieDetails,
        movieDetailsState,
        movieDetailsErrorMsg,
        moviesRecommendation,
        moviesRecommendationState,
        moviesRecommendationErrorMsg
      ];

  MovieDetailsStates copyWith({
    MovieDetails? movieDetails,
    RequestState? movieDetailsState,
    String? movieDetailsErrorMsg,
    List<MoviesRecommendation>? moviesRecommendation,
    RequestState? moviesRecommendationState,
    String? moviesRecommendationErrorMsg,
  }) {
    return MovieDetailsStates(
      movieDetails: movieDetails ?? this.movieDetails,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      movieDetailsErrorMsg: movieDetailsErrorMsg ?? this.movieDetailsErrorMsg,
      moviesRecommendation: moviesRecommendation ?? this.moviesRecommendation,
      moviesRecommendationState:
          moviesRecommendationState ?? this.moviesRecommendationState,
      moviesRecommendationErrorMsg:
          moviesRecommendationErrorMsg ?? this.moviesRecommendationErrorMsg,
    );
  }
}
