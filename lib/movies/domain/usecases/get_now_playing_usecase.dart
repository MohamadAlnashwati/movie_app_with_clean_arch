import 'package:dartz/dartz.dart';
import 'package:movie_app/core/usecase/base_usecase.dart';
import 'package:movie_app/movies/domain/entities/movie.dart';
import 'package:movie_app/movies/domain/repositry/base_movie_repositry.dart';

import '../../../core/error/failure.dart';

class GetNowPlayingMoviesUsecase
    extends BaseUseCases<List<Movie>, NoParameters> {
  final BaseMovieRepositry baseMovieRepositry;

  GetNowPlayingMoviesUsecase(this.baseMovieRepositry);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMovieRepositry.getNowPlayingMovies();
  }
}
