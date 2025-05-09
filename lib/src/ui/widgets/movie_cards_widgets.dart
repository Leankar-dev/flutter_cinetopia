import 'package:flutter/material.dart';
import 'package:flutter_cinetopia/src/app/models/movie_model.dart';

class MovieCardsWidgets extends StatelessWidget {
  final MovieModel movie;
  // final String descriptionMovie;
  // final MovieModel imageMovie;
  const MovieCardsWidgets({
    super.key,
    required this.movie,
    // required this.descriptionMovie,
    // required this.imageMovie,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 90,
          height: 120,
          decoration: BoxDecoration(
            color: Color(0xFF000000),
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(movie.getPosterImage()),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              movie.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFFA5A5A5),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'Lançamento: ${movie.releaseDate}',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFFA5A5A5),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
