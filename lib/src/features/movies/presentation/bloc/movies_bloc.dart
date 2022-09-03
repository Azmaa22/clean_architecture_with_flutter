import 'package:bloc/bloc.dart';
import 'package:clean_architecture_with_flutter/src/core/utils/shared/enums/request_state_enum.dart';
import 'package:clean_architecture_with_flutter/src/core/utils/shared/use_case/base_use_case.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/use_cases/get_now_playing_movies_use_case.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/use_cases/get_popular_movies_use_case.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/use_cases/get_top_rated_movies_use_case.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/presentation/bloc/movies_events.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/presentation/bloc/movies_states.dart';

class MoviesBloc extends Bloc<MoviesEvents, MoviesStates> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
  MoviesBloc(
    this.getNowPlayingMoviesUseCase,
    this.getPopularMoviesUseCase,
    this.getTopRatedMoviesUseCase,
  ) : super(MoviesStates()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      var result = await getNowPlayingMoviesUseCase(
        const NoParameters(),
      );

      result.fold((failure) {
        emit(
          state.copyWith(
            nowPlayingMoviesState: RequestState.isError,
            nowPlayingErrorMessage: failure.message,
          ),
        );
      }, (data) {
        emit(
          state.copyWith(
            nowPlayingMoviesState: RequestState.isLoaded,
            nowPlayingMovies: data,
          ),
        );
      });
    });

    on<GetPopularMoviesEvent>((event, emit) async {
      var result = await getPopularMoviesUseCase(
        const NoParameters(),
      );

      result.fold((failure) {
        emit(
          state.copyWith(
            popularMoviesState: RequestState.isError,
            popularErrorMessage: failure.message,
          ),
        );
      }, (data) {
        emit(
          state.copyWith(
            popularMoviesState: RequestState.isLoaded,
            popularMovies: data,
          ),
        );
      });
    });

    on<GetTopRatedMoviesEvent>((event, emit) async {
      var result = await getTopRatedMoviesUseCase(
        const NoParameters(),
      );

      result.fold((failure) {
        emit(
          state.copyWith(
            topRatedMoviesState: RequestState.isError,
            topRatedErrorMessage: failure.message,
          ),
        );
      }, (data) {
        emit(
          state.copyWith(
            topRatedMoviesState: RequestState.isLoaded,
            topRatedMovies: data,
          ),
        );
      });
    });
  }
}
