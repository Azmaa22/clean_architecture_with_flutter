import 'package:clean_architecture_with_flutter/src/core/error/exceptions.dart';
import 'package:clean_architecture_with_flutter/src/core/error/failure.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/data/data_sources/movies_remote_data_source.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movie.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movie_details.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movies_recommendation.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/repositories/base_movies_repository.dart';
import 'package:dartz/dartz.dart';

class MoviesRepository extends BaseMoviesRepository {
  final BaseMoviesRemoteDataSource baseMoviesRemoteDataSource;

  MoviesRepository(this.baseMoviesRemoteDataSource);
  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMoviesRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          failure.errorMessageModel.statusMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseMoviesRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          failure.errorMessageModel.statusMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMoviesRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          failure.errorMessageModel.statusMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(int parameters) async {
    final result = await baseMoviesRemoteDataSource.getMovieDetails(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          failure.errorMessageModel.statusMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<MoviesRecommendation>>> getMovieRecommendations(
      int parameters) async {
    final result =
        await baseMoviesRemoteDataSource.getMovieRecommendations(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          failure.errorMessageModel.statusMessage,
        ),
      );
    }
  }
}
