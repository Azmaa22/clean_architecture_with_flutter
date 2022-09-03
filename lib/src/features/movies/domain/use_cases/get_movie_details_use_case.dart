import 'package:clean_architecture_with_flutter/src/core/error/failure.dart';
import 'package:clean_architecture_with_flutter/src/core/utils/shared/use_case/base_use_case.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movie_details.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/repositories/base_movies_repository.dart';
import 'package:dartz/dartz.dart';

class GetMovieDetailsUseCase extends BaseUseCase<MovieDetails, int> {
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase(this.baseMoviesRepository);
  @override
  Future<Either<Failure, MovieDetails>> call(int parameters) async {
    return await baseMoviesRepository.getMovieDetails(parameters);
  }
}
