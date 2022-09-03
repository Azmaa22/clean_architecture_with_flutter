import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/genre.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movie_details.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movies_recommendation.dart';

MovieDetails movieDetailDummy = const MovieDetails(
  backdropPath: "/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg",
  genres: [
    Genre(name: 'Family', id: 10751),
  ],
  id: 438148,
  overview:
      "A fanboy of a supervillain supergroup known as the Vicious 6, Gru hatches a plan to become evil enough to join them, with the backup of his followers, the Minions.",
  releaseDate: "2022-06-29",
  runTime: 87,
  title: "Minions: The Rise of Gru",
  voteAverage: 7.8,
);

List<MoviesRecommendation> recommendationDummy = [
  const MoviesRecommendation(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const MoviesRecommendation(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const MoviesRecommendation(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const MoviesRecommendation(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const MoviesRecommendation(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const MoviesRecommendation(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const MoviesRecommendation(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const MoviesRecommendation(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const MoviesRecommendation(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const MoviesRecommendation(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const MoviesRecommendation(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const MoviesRecommendation(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const MoviesRecommendation(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
];
