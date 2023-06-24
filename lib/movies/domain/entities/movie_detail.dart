import 'package:equatable/equatable.dart';
import 'package:movie_app/movies/domain/entities/genres.dart';

class MovieDetail extends Equatable {
  final int id;
  final String backdropPath;
  final String title;
  final List<Genres> genres;
  final String overview;
  final int runtime;
  final double voteAverage;
  final int voteCount;
  final String releaseDate;

  const MovieDetail({
    required this.id,
    required this.backdropPath,
    required this.title,
    required this.overview,
    required this.runtime,
    required this.genres,
    required this.voteAverage,
    required this.voteCount,
    required this.releaseDate,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        overview,
        backdropPath,
        genres,
        runtime,
        voteAverage,
        voteCount,
        releaseDate,
      ];
}
