import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movie.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/repositories/base_movies_repository.dart';

class GetTopRatedMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUseCase(this.baseMoviesRepository);

  Future<List<Movie>> execute() async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}
