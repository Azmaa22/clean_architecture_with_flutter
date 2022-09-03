import 'package:clean_architecture_with_flutter/src/core/utils/dummy.dart';
import 'package:clean_architecture_with_flutter/src/core/utils/services/service_locator.dart';
import 'package:clean_architecture_with_flutter/src/core/utils/shared/enums/request_state_enum.dart';
import 'package:clean_architecture_with_flutter/src/core/utils/shared/widgets/error_card.dart';
import 'package:clean_architecture_with_flutter/src/core/utils/shared/widgets/loader.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/presentation/bloc/movies_bloc.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/presentation/bloc/movies_events.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/presentation/bloc/movies_states.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/presentation/ui/widgets/list_header.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/presentation/ui/widgets/movies_list.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/presentation/ui/widgets/movies_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainMoviesScreen extends StatelessWidget {
  const MainMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => serviceLocator<MoviesBloc>()
        ..add(
          GetNowPlayingMoviesEvent(),
        )
        ..add(
          GetPopularMoviesEvent(),
        )
        ..add(
          GetTopRatedMoviesEvent(),
        ),
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          key: const Key('movieScrollView'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<MoviesBloc, MoviesStates>(
                buildWhen: (previous, current) =>
                    previous.nowPlayingMoviesState !=
                    current.nowPlayingMoviesState,
                builder: (context, state) {
                  switch (state.nowPlayingMoviesState) {
                    case RequestState.isLoading:
                      return const Loader();

                    case RequestState.isLoaded:
                      return MoviesSlider(
                        moviesList: state.nowPlayingMovies,
                        goToMovieDetails: () {
                          print('go to details');
                        },
                      );

                    case RequestState.isError:
                      return ErrorCard(
                        errorMsg: state.nowPlayingErrorMessage,
                      );
                  }
                },
              ),
              ListHeader(
                title: 'Popular',
                onPress: () {
                  print('see more');
                },
              ),
              BlocBuilder<MoviesBloc, MoviesStates>(
                buildWhen: (previous, current) =>
                    previous.popularMoviesState != current.popularMoviesState,
                builder: (context, state) {
                  switch (state.popularMoviesState) {
                    case RequestState.isLoading:
                      return const Loader();
                    case RequestState.isLoaded:
                      return MoviesList(
                        moviesList: state.popularMovies,
                        goToMovieDetails: () {
                          print('go to details');
                        },
                      );
                    case RequestState.isError:
                      return ErrorCard(
                        errorMsg: state.popularErrorMessage,
                      );
                  }
                },
              ),
              ListHeader(
                title: 'Top Rated',
                onPress: () {
                  print('see more');
                },
              ),
              BlocBuilder<MoviesBloc, MoviesStates>(
                buildWhen: (previous, current) =>
                    previous.topRatedMoviesState != current.topRatedMoviesState,
                builder: (context, state) {
                  switch (state.topRatedMoviesState) {
                    case RequestState.isLoading:
                      return const Loader();
                    case RequestState.isLoaded:
                      return MoviesList(
                        moviesList: state.topRatedMovies,
                        goToMovieDetails: () {
                          print('go to details');
                        },
                      );
                    case RequestState.isError:
                      return ErrorCard(
                        errorMsg: state.topRatedErrorMessage,
                      );
                  }
                },
              ),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
