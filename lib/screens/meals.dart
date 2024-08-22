import 'package:flutter/material.dart';
import 'package:recipes_app/models/meal.dart';
import 'package:recipes_app/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.meals,
  });

  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: meals.isNotEmpty
          ? ListView.separated(
              padding: const EdgeInsets.all(12),
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemCount: meals.length,
              itemBuilder: (ctx, index) => MealItem(meal: meals[index]),
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
