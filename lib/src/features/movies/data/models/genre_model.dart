import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/genre.dart';

class GenreModel extends Genre {
  const GenreModel({
    required super.id,
    required super.name,
  });
  factory GenreModel.fromJson(Map<String, dynamic> json) {
    return GenreModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
