import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';

enum _SelectedTab { home, favorite, add, search, person }

final class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ListView.builder(
        itemCount: 300,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.amber,
            ),
          );
        },
      ),
      bottomNavigationBar: CrystalNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        // indicatorColor: Colors.white,
        unselectedItemColor: Colors.white70,
        backgroundColor: Colors.black.withValues(alpha: .1),
        // outlineBorderColor: Colors.black.withOpacity(0.1),
        onTap: _handleIndexChanged,
        splashColor: Colors.transparent,
        items: [
          /// Home
          CrystalNavigationBarItem(
            icon: Icons.home,
            unselectedIcon: Icons.home,
            selectedColor: Colors.white,
          ),

          /// Favourite
          CrystalNavigationBarItem(
            icon: Icons.abc,
            unselectedIcon: Icons.access_alarm,
            selectedColor: Colors.white,
          ),

          /// Add
          CrystalNavigationBarItem(
            icon: Icons.abc,
            unselectedIcon: Icons.abc,
            selectedColor: Colors.white,
          ),

          /// Profile
          CrystalNavigationBarItem(
            icon: Icons.abc_sharp,
            unselectedIcon: Icons.abc_sharp,
            selectedColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
