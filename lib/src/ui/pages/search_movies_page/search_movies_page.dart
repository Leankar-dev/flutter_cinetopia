import 'package:flutter/material.dart';
import 'package:flutter_cinetopia/src/app/services/search_popular_movies_service_impl.dart';
import 'package:flutter_cinetopia/src/ui/widgets/movie_cards_widgets.dart';

class SearchMoviesPage extends StatelessWidget {
  final SearchPopularMoviesServiceImpl searchPopularMoviesService =
      SearchPopularMoviesServiceImpl();

  SearchMoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: searchPopularMoviesService.gethMovies(),
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
                      titleMovie: 'Titulo do Filme',
                      descriptionMovie: 'Descrição do filme',
                      imageMovie: 'assets/popular.png',
                    ),
                  );
                },
                itemCount: 10,
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
