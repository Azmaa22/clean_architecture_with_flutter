import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movies_recommendation.dart';

class MovieRecommendationModel extends MoviesRecommendation {
  const MovieRecommendationModel({
    required super.id,
    required super.backdropPath,
  });

  factory MovieRecommendationModel.fromJson(Map<String, dynamic> json) {
    return MovieRecommendationModel(
      id: json['id'],
      backdropPath: json['backdrop_path'],
    );
  }
}
