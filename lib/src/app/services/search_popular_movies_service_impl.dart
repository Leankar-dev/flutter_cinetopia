import 'dart:convert';

import 'package:flutter_cinetopia/src/app/helpers/consts.dart';
import 'package:flutter_cinetopia/src/app/models/movie_model.dart';
import 'package:flutter_cinetopia/src/app/services/search_movies_service.dart';
import 'package:http/http.dart' as http;

class SearchPopularMoviesServiceImpl implements SearchMoviesService {
  List<MovieModel> movies = [];

  @override
  Future<List<MovieModel>> gethMovies() async {
    try {
      final response = await http.get(
        Uri.parse(popularMoviesUrl),
        headers: requestHeader,
      );
      if (response.statusCode == 200) {
        final data = response.body;
        for (dynamic movie in json.decode(data)['results']) {
          movies.add(MovieModel.fromMap(movie));
        }

        for (MovieModel movie in movies) {
          print(movie.title);
        }
      } else {
        throw Exception('Failed to load movies');
      }

      return movies;
    } catch (e) {
      print('Error: $e');
      return movies;
    }
  }
}
