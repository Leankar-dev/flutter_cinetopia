import 'dart:convert';

import 'package:flutter_cinetopia/src/app/models/movie_model.dart';
import 'package:flutter_cinetopia/src/app/utils/apikey.dart';
import 'package:http/http.dart' as http;

class SearchMoviesService {
  final String popularMoviesUrl =
      'https://api.themoviedb.org/3/movie/popular?language=pt-PT&page=1';

  List<MovieModel> movies = [];

  Future<List<MovieModel>> searchMovies() async {
    try {
      final response = await http.get(
        Uri.parse(popularMoviesUrl),
        headers: {
          'accept': 'application/json',
          'Authorization': 'Bearer $apiKey ',
        },
      );
      if (response.statusCode == 200) {
        final data = response.body;
        final List<dynamic> jsonData = jsonDecode(data)['results'];
        movies =
            jsonData
                .map((movie) => MovieModel.fromMap(movie))
                .toList()
                .cast<MovieModel>();
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
