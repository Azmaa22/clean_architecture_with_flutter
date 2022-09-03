import 'package:clean_architecture_with_flutter/src/core/error/failure.dart';
import 'package:clean_architecture_with_flutter/src/core/utils/shared/use_case/base_use_case.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movie.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movies_recommendation.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/repositories/base_movies_repository.dart';
import 'package:dartz/dartz.dart';

class GetMovieRecommendationsUseCase
    extends BaseUseCase<List<MoviesRecommendation>, int> {
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieRecommendationsUseCase(this.baseMoviesRepository);
  @override
  Future<Either<Failure, List<MoviesRecommendation>>> call(
      int parameters) async {
    return await baseMoviesRepository.getMovieRecommendations(parameters);
  }
}
