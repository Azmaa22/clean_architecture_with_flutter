import 'package:clean_architecture_with_flutter/src/features/movies/data/models/genre_model.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/genre.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movie_details.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel({
    required super.backdropPath,
    required super.genres,
    required super.id,
    required super.overview,
    required super.releaseDate,
    required super.runTime,
    required super.title,
    required super.voteAverage,
  });
  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      backdropPath: json['backdrop_path'],
      genres: List<GenreModel>.from(
        json['genres'].map(
          (element) => GenreModel.fromJson(element),
        ),
      ),
      id: json['id'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      runTime: json['runtime'],
      title: json['title'],
      voteAverage: json['vote_average'],
    );
  }
}
