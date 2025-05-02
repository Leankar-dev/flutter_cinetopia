import 'package:flutter/material.dart';
import 'package:flutter_cinetopia/src/ui/widgets/movie_cards_widgets.dart';

class SearchMoviesPage extends StatelessWidget {
  const SearchMoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MovieCardsWidgets(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Voltar para a tela inicial'),
            ),
          ],
        ),
      ),
    );
  }
}
