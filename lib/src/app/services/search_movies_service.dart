import 'package:flutter_cinetopia/src/app/models/movie_model.dart';

abstract class SearchMoviesService {
  Future<List<MovieModel>> gethMovies();
}
