import 'package:flutter/material.dart';

class MovieCardsWidgets extends StatelessWidget {
  final String titleMovie;
  final String descriptionMovie;
  final String imageMovie;
  const MovieCardsWidgets({
    super.key,
    required this.titleMovie,
    required this.descriptionMovie,
    required this.imageMovie,
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
              image: Image.asset(imageMovie).image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleMovie,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFFA5A5A5),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              descriptionMovie,
              style: TextStyle(
                fontSize: 14,
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
