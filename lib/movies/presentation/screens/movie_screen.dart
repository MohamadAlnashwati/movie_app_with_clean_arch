// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services_locator/services_locator.dart';
import 'package:movie_app/movies/presentation/components/component.dart';
import 'package:movie_app/movies/presentation/components/now_playing_component.dart';
import 'package:movie_app/movies/presentation/components/text_components.dart';
import 'package:movie_app/movies/presentation/controller/movies_bloc.dart';
import 'package:movie_app/movies/presentation/controller/movies_events.dart';

class MoviesScreen extends StatelessWidget {
  MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => sl<MoviesBloc>()
        ..add(GetNowPlayingMoviesEvent())
        ..add(GetPopularMoviesEvent())
        ..add(GetTopRatedMoviesEvent()),
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          key: const Key('movieScrollView'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NowPlayingComponent(),
              MoviesType(
                nameType: 'Popular',
                onTap: () {},
              ),
              const PopularComponent(),
              MoviesType(
                nameType: 'Top Rated',
                onTap: () {},
              ),
              const TopRatedComponent(),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
