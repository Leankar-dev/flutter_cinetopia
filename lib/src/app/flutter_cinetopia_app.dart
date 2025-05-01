import 'package:flutter/material.dart';
import 'package:flutter_cinetopia/src/ui/pages/home_page/home_page.dart';

class FlutterCinetopiaApp extends StatelessWidget {
  const FlutterCinetopiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cinetopia App',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        // scaffoldBackgroundColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}
