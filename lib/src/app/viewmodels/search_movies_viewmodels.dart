import 'package:flutter_cinetopia/src/app/models/movie_model.dart';
import 'package:flutter_cinetopia/src/app/services/search_movies_service.dart';
import 'package:flutter_cinetopia/src/app/services/search_popular_movies_service_impl.dart';

class SearchMoviesViewmodels {
  List<MovieModel> _moviesList = <MovieModel>[];

  Future<List<MovieModel>> getPopularMovies() async {
    final SearchMoviesService service = SearchPopularMoviesServiceImpl();
    _moviesList = await service.gethMovies();
    return _moviesList;
  }

  List<MovieModel> get moviesList => _moviesList;
}
