import 'package:flutter/material.dart';
import 'package:flutter_cinetopia/src/ui/widgets/movie_cards_widgets.dart';

class SearchMoviesPage extends StatelessWidget {
  const SearchMoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MovieCardsWidgets(
            imageMovie: 'assets/popular.png',
            titleMovie: 'Titulo Filme',
            descriptionMovie: 'Descriçao Filme',
          ),
          const SizedBox(height: 100),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Voltar para a tela inicial'),
          ),
        ],
      ),
    );
  }
}
