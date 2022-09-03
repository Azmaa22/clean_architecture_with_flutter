import 'package:clean_architecture_with_flutter/src/core/error/failure.dart';
import 'package:clean_architecture_with_flutter/src/core/utils/shared/use_case/base_use_case.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movie.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/repositories/base_movies_repository.dart';
import 'package:dartz/dartz.dart';

class GetNowPlayingMoviesUseCase
    extends BaseUseCase<List<Movie>, NoParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);
  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}
