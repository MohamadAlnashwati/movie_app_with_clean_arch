import 'package:get_it/get_it.dart';
import 'package:movie_app/movies/data/data_source/movie_remote_data_source.dart';
import 'package:movie_app/movies/data/repositry/movies_repositry.dart';
import 'package:movie_app/movies/domain/repositry/base_movie_repositry.dart';
import 'package:movie_app/movies/domain/usecases/get_now_playing_usecase.dart';
import 'package:movie_app/movies/domain/usecases/get_popular_movies.dart';
import 'package:movie_app/movies/domain/usecases/get_top_rated_movies.dart';
import 'package:movie_app/movies/presentation/controller/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    // rehisterLazySingleton remote same object, and registerFactory remote different object(create new object)

    // registerLazySingleton create object when I USE it, and registerSingleton create object without I USE it

    // Base Data Source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
    // Base Repository
    sl.registerLazySingleton<BaseMovieRepositry>(() => MoviesRepositry(sl()));

    // Use Cases
    sl.registerLazySingleton(() => GetNowPlayingMoviesUsecase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUsecase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUsecase(sl()));

    // Bloc
    sl.registerFactory(() => MoviesBloc(
          sl(),
          sl(),
          sl(),
        ));
  }
}
