import 'package:flutter/material.dart';
import 'package:recipes_app/screens/categories.dart';
import 'package:recipes_app/screens/meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedTabIndex = 0;

  Widget get _selectedTab {
    switch (_selectedTabIndex) {
      case 0:
        return const CategoriesScreen();
      case 1:
        return const MealsScreen(title: "Favorites", meals: []);
      default:
        return const Center(
          child: CircularProgressIndicator(),
        );
    }
  }

  void _selectTab(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedTab,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
