//import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_recipes_app/models/recipes.dart';
import 'package:flutter_recipes_app/pages/recipes_details.dart';

class RecipesApp extends StatelessWidget {
  const RecipesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Calculator'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailPage(recipe: Recipe.samples[index]);
                    },
                  ),
                );
              },
              child: buildReceipeCard(Recipe.samples[index]),
            );
          },
        ),
      ),
    );
  }
}

Widget buildReceipeCard(Recipe recipe) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        Image(
          image: AssetImage(recipe.imageUrl!),
        ),
        const SizedBox(
          height: 14.0,
        ),
        Text(
          recipe.label,
          style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino'),
        ),
      ]),
    ),
  );
}
