import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 42,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 20),
                Text(
                  'Recipes',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 24,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            title: Text(
              'Meals',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontSize: 24,
                  ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.filter_list_alt,
              size: 24,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            title: Text(
              'Filters',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontSize: 24,
                  ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
