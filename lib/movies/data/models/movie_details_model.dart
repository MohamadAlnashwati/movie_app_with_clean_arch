import 'package:movie_app/movies/data/models/genres_model.dart';
import 'package:movie_app/movies/domain/entities/movie_detail.dart';

class MovieDetailsModel extends MovieDetail {
  const MovieDetailsModel({
    required super.id,
    required super.backdropPath,
    required super.title,
    required super.overview,
    required super.runtime,
    required super.genres,
    required super.voteAverage,
    required super.voteCount,
    required super.releaseDate,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
        id: json['id'],
        backdropPath: json['backdrop_path'],
        title: json['title'],
        overview: json['overview'],
        runtime: json['runtime'],
        genres: List<GenresModel>.from(
            json["genres"].map((x) => GenresModel.fromJson(x))),
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
        releaseDate: json["release_date"],
      );
}
