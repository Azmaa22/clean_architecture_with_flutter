import 'package:clean_architecture_with_flutter/src/core/error/failure.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movie.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movie_details.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movies_recommendation.dart';
import 'package:dartz/dartz.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
  Future<Either<Failure, MovieDetails>> getMovieDetails(int parameters);

  Future<Either<Failure, List<MoviesRecommendation>>> getMovieRecommendations(
      int parameters);
}
