import 'package:bloc/bloc.dart';
import 'package:clean_architecture_with_flutter/src/core/utils/shared/enums/request_state_enum.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/use_cases/get_now_playing_movies_use_case.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/presentation/bloc/movies_events.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/presentation/bloc/movies_states.dart';

class MoviesBloc extends Bloc<MoviesEvents, MoviesStates> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  MoviesBloc(this.getNowPlayingMoviesUseCase) : super(MoviesStates()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      var result = await getNowPlayingMoviesUseCase.execute();

      result.fold((failure) {
        emit(
          MoviesStates(
            nowPlayingMoviesState: RequestState.isError,
            message: failure.message,
          ),
        );
      }, (data) {
        emit(
          MoviesStates(
            nowPlayingMoviesState: RequestState.isLoaded,
            nowPlayingMovies: data,
          ),
        );
      });
    });
  }
}
