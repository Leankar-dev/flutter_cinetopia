import 'package:flutter/material.dart';
import 'package:flutter_cinetopia/src/ui/widgets/custom_primary_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ink(
        // usar o Ink em vez do Container para o botão não desaparecer
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF000000), Color(0xFF1D0E44)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png'),
              const SizedBox(height: 24),
              Image.asset('assets/splash.png'),
              const SizedBox(height: 24),
              Text(
                'O lugar ideal para você assistir seus filmes e séries favoritos',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
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
      ),
    );
  }
}
