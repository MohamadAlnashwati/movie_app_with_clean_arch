import 'package:movie_app/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.id,
    required super.title,
    required super.genreIds,
    required super.backdropPath,
    required super.overview,
    required super.voteAverage,
    required super.voteCount,
    required super.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json["id"],
        title: json["title"],
        genreIds: List<int>.from(json["genre_ids"].map((e) => e)),
        backdropPath: json["backdrop_path"],
        overview: json["overview"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
        releaseDate: json["release_date"],
      );
}
