import 'package:flutter/material.dart';
import 'package:flutter_cinetopia/src/ui/widgets/custom_primary_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Center(child: const Text('Cinetopia App'))),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset('assets/logo.png'),
            Image.asset('assets/splash.png'),
            const Text(
              'O lugar ideal para você assistir seus filmes e séries favoritos',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            CustomPrimaryButtonWidget(
              onTap: () {},
              text: 'Quero Começar',
              textColor: Color(0xFF1D0E44),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              backgroundColor: Color(0xFFB370FF),
              iconData: Icons.arrow_forward,
              iconSize: 20,
            ),
          ],
        ),
      ),
    );
  }
}
