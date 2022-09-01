class EndPoints {
  static const String _baseUrl = 'https://api.themoviedb.org/3';
  static const String getNowPlayingMovies = '$_baseUrl/movie/now_playing';
  static const String getPopularMovies = '$_baseUrl/movie/popular';
  static const String getTopRatedMovies = '$_baseUrl/movie/top_rated';
  static const String imageBaseUrl = 'https://image.tmdb.org/t/p/w500';
  static String imageUrl(String path) {
    return imageBaseUrl + path;
  }
}
