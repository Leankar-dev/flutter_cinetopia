import 'package:flutter/material.dart';
import 'package:flutter_cinetopia/src/app/viewmodels/search_movies_viewmodels.dart';
import 'package:flutter_cinetopia/src/ui/widgets/movie_cards_widgets.dart';

class SearchMoviesPage extends StatelessWidget {
  final SearchMoviesViewmodels viewmodels = SearchMoviesViewmodels();

  SearchMoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: viewmodels.getPopularMovies(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Image.asset("assets/movie.png", height: 80, width: 80),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Text(
                    "Filmes populares",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Pesquisar",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList.builder(
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: MovieCardsWidgets(
                      movie: viewmodels.moviesList[index],
                    ),
                  );
                },
                itemCount: viewmodels.moviesList.length,
              ),
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
