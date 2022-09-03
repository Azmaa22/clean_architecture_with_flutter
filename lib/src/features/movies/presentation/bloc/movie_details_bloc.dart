import 'package:bloc/bloc.dart';
import 'package:clean_architecture_with_flutter/src/core/utils/shared/enums/request_state_enum.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/use_cases/get_movie_details_use_case.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/use_cases/get_movie_recommendations_use_case.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/presentation/bloc/movie_details_events.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/presentation/bloc/movie_details_states.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvents, MovieDetailsStates> {
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetMovieRecommendationsUseCase getMovieRecommendationsUseCase;
  MovieDetailsBloc(
    this.getMovieDetailsUseCase,
    this.getMovieRecommendationsUseCase,
  ) : super(const MovieDetailsStates()) {
    on<GetMovieDetailsEvent>((event, emit) async {
      var result = await getMovieDetailsUseCase(
        event.movieId,
      );

      result.fold((failure) {
        emit(
          state.copyWith(
            movieDetailsState: RequestState.isError,
            movieDetailsErrorMsg: failure.message.toString(),
          ),
        );
      }, (data) {
        emit(
          state.copyWith(
            movieDetailsState: RequestState.isLoaded,
            movieDetails: data,
          ),
        );
      });
    });
    on<GetMovieRecommendationsEvent>((event, emit) async {
      var result = await getMovieRecommendationsUseCase(
        event.movieId,
      );

      result.fold((failure) {
        emit(
          state.copyWith(
            moviesRecommendationState: RequestState.isError,
            moviesRecommendationErrorMsg: failure.message.toString(),
          ),
        );
      }, (data) {
        emit(
          state.copyWith(
            moviesRecommendationState: RequestState.isLoaded,
            moviesRecommendation: data,
          ),
        );
      });
    });
  }
}
