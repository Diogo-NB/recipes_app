import 'package:flutter/material.dart';
import 'package:recipes_app/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.title,
    required this.meals,
  });

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: meals.isNotEmpty
          ? ListView.builder(
              itemCount: meals.length,
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text(meals[index].title),
                );
              },
            )
          : Center(
              child: Text(
                'No meals found!',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
              ),
            ),
    );
  }
}
