import 'package:flutter/material.dart';
import 'package:flutter_cinetopia/src/ui/pages/releases_page/releases_page.dart';
import 'package:flutter_cinetopia/src/ui/pages/search_movies_page/search_movies_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = <Widget>[SearchMoviesPage(), ReleasesPage()];

  void updateIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: updateIndex,
        selectedItemColor: const Color(0xFFB370FF),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Filmes'),
          BottomNavigationBarItem(
            icon: Icon(Icons.today),
            label: 'Lançamentos',
          ),
        ],
      ),
    );
  }
}
