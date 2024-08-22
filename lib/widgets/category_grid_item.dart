import 'package:flutter/material.dart';
import 'package:recipes_app/models/meal.dart';
import 'package:recipes_app/screens/meals.dart';

import '../models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: InkWell(
        onTap: () {
          final filteredMeals = availableMeals.where((meal) {
            return meal.categories.contains(category.id);
          }).toList();

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return MealsScreen(meals: filteredMeals);
              },
            ),
          );
        },
        splashColor: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                category.color.withOpacity(0.55),
                category.color.withOpacity(0.9),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Text(
            category.title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
        ),
      ),
    );
  }
}
