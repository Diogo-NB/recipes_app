import 'package:flutter/material.dart';
import 'package:recipes_app/screens/categories.dart';
import 'package:recipes_app/screens/meals.dart';
import 'package:recipes_app/widgets/nav_drawer.dart';

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
        return const MealsScreen(meals: []);
      default:
        return const Center(
          child: CircularProgressIndicator(),
        );
    }
  }

  String get _selectedTabTitle {
    switch (_selectedTabIndex) {
      case 0:
        return 'Categories';
      case 1:
        return 'Favorites';
      default:
        return '';
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
      appBar: AppBar(title: Text(_selectedTabTitle)),
      drawer: const NavDrawer(),
      body: _selectedTab,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectTab,
        currentIndex: _selectedTabIndex,
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
