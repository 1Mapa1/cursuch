import 'package:flutter/material.dart';
import 'package:cursuch/pages/recipes_page.dart';
import 'package:cursuch/pages/recipe_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter ListView',
      home: RecipesPage(),
    );
  }
}


