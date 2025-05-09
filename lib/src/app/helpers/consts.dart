import 'package:flutter_cinetopia/src/app/utils/apikey.dart';

const String popularMoviesUrl =
    'https://api.themoviedb.org/3/movie/popular?language=pt-PT&page=1';

const String imageUrlPrefix = 'https://image.tmdb.org/t/p/w500';

const requestHeader = {
  'accept': 'application/json',
  'Authorization': 'Bearer $apiKey ',
};
