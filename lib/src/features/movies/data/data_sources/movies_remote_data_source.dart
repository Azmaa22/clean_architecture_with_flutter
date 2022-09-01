import 'package:clean_architecture_with_flutter/src/core/api/end_points.dart';
import 'package:clean_architecture_with_flutter/src/core/error/error_message_model.dart';
import 'package:clean_architecture_with_flutter/src/core/error/exceptions.dart';
import 'package:clean_architecture_with_flutter/src/core/utils/app_constances.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/data/models/movie_model.dart';
import 'package:dio/dio.dart';

abstract class BaseMoviesRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
}

class MoviesRemoteDataSource extends BaseMoviesRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    String path =
        '${EndPoints.getNowPlayingMovies}?api_key=${AppConstances.apiKey}';
    final response = await Dio().get(path);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data['results'] as List).map(
          (movieData) => MovieModel.fromJson(movieData),
        ),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(
          response.data,
        ),
      );
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    String path =
        '${EndPoints.getPopularMovies}?api_key=${AppConstances.apiKey}';
    final response = await Dio().get(path);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data['results'] as List).map(
          (movieData) => MovieModel.fromJson(movieData),
        ),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(
          response.data,
        ),
      );
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    String path =
        '${EndPoints.getTopRatedMovies}?api_key=${AppConstances.apiKey}';
    final response = await Dio().get(path);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data['results'] as List).map(
          (movieData) => MovieModel.fromJson(movieData),
        ),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(
          response.data,
        ),
      );
    }
  }
}
