import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/core/usecase/base_usecase.dart';
import '../entities/movie.dart';
import '../repositry/base_movie_repositry.dart';

class GetTopRatedMoviesUsecase extends BaseUseCases<List<Movie>, NoParameters> {
  final BaseMovieRepositry baseMovieRepositry;
  GetTopRatedMoviesUsecase(this.baseMovieRepositry);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMovieRepositry.getTopRatedMovies();
  }
}
