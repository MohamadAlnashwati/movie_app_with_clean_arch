import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/core/usecase/base_usecase.dart';
import 'package:movie_app/movies/domain/entities/movie_detail.dart';
import 'package:movie_app/movies/domain/repositry/base_movie_repositry.dart';

class GetMovieDetailsUsecase
    extends BaseUseCases<MovieDetail, MovieDetailsParameters> {
  final BaseMovieRepositry baseMovieRepositry;

  GetMovieDetailsUsecase(this.baseMovieRepositry);
  @override
  Future<Either<Failure, MovieDetail>> call(
      MovieDetailsParameters parameters) async {
    return await baseMovieRepositry.getMovieDetails(parameters);
  }
}

class MovieDetailsParameters extends Equatable {
  final int movieId;

  const MovieDetailsParameters({required this.movieId});

  @override
  List<Object?> get props => [
        movieId,
      ];
}
