import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_architecture_with_flutter/src/core/api/end_points.dart';
import 'package:clean_architecture_with_flutter/src/features/movies/domain/entities/movie.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MoviesList extends StatelessWidget {
  final List<Movie> moviesList;
  final VoidCallback goToMovieDetails;
  const MoviesList({
    Key? key,
    required this.moviesList,
    required this.goToMovieDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: const Duration(milliseconds: 500),
      child: SizedBox(
        height: 170.0,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          itemCount: moviesList.length,
          itemBuilder: (context, index) {
            final movie = moviesList[index];
            return Container(
              padding: const EdgeInsets.only(right: 8.0),
              child: InkWell(
                onTap: goToMovieDetails,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  child: CachedNetworkImage(
                    width: 120.0,
                    fit: BoxFit.cover,
                    imageUrl: EndPoints.imageUrl(movie.backdropPath),
                    placeholder: (context, url) => Shimmer.fromColors(
                      baseColor: Colors.grey[850]!,
                      highlightColor: Colors.grey[800]!,
                      child: Container(
                        height: 170.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
