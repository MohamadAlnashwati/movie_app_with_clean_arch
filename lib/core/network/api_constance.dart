class ApiConstance {
  static const baseUrl = 'https://api.themoviedb.org/3';
  static const movieUrl = '$baseUrl/movie';
  static const tvUrl = '$baseUrl/tv';
  static const apiKey = '09abbefc6ad8f2a506dd4c878b0a70bf';
  static const baseImageUrl = 'https://image.tmdb.org/t/p/w500';
  static const nowPlayingMoviesPath = '$movieUrl/now_playing?api_key=$apiKey';
  static const popularMoviesPath = '$movieUrl/popular?api_key=$apiKey';
  static const topRatedMoviesPath = '$movieUrl/top_rated?api_key=$apiKey';
  static movieDetailsPath(int movieId) => '$movieUrl/$movieId?api_key=$apiKey';
  static recommendationMoviesPath(int movieId) =>
      '$movieUrl/$movieId/recommendations?api_key=$apiKey';
  static String imageUrl(String path) => '$baseImageUrl$path';
}

/*
                      CachedNetworkImage(
                            width: 120.0,
                            fit: BoxFit.cover,
                            imageUrl: ApiConstance.imageUrl(movie.backdropPath),
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
                          )*/