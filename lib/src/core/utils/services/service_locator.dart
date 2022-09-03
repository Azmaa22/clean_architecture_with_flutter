import 'package:clean_architecture_with_flutter/src/features/movies/data/data_sources/movies_remote_data_source.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/data/repositories/movies_repository.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/repositories/base_movies_repository.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/use_cases/get_now_playing_movies_use_case.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/use_cases/get_popular_movies_use_case.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/use_cases/get_top_rated_movies_use_case.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/presentation/bloc/movies_bloc.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

class ServiceLocator {
  void init() {
    //& BLOCS
    serviceLocator.registerFactory(
      () => MoviesBloc(
        serviceLocator(),
        serviceLocator(),
        serviceLocator(),
      ),
    );
    //& USECASES
    serviceLocator.registerLazySingleton(
      () => GetNowPlayingMoviesUseCase(serviceLocator()),
    );
    serviceLocator.registerLazySingleton(
      () => GetPopularMoviesUseCase(serviceLocator()),
    );
    serviceLocator.registerLazySingleton(
      () => GetTopRatedMoviesUseCase(serviceLocator()),
    );
    //& REPOSITORIES
    serviceLocator.registerLazySingleton<BaseMoviesRepository>(
      () => MoviesRepository(serviceLocator()),
    );
    //& DATA SOURCES
    serviceLocator.registerLazySingleton<BaseMoviesRemoteDataSource>(
      () => MoviesRemoteDataSource(),
    );
  }
}
