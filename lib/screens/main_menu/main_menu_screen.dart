import 'package:flutter/material.dart';
import 'package:responsive_example/screens/main_menu/main_menu_grid.dart';
import 'package:responsive_example/screens/main_menu/main_menu_row.dart';
import 'package:responsive_example/screens/main_menu/search_bar_with_QR.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Menu'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SearchBarWithQR(),
            const SizedBox(
              height: 8,
            ),
            const MainMenuRow(),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Categories'),
                TextButton(onPressed: () {}, child: const Text('View All'))
              ],
            ),
            const MainMenuGrid(),
          ],
        ),
      ),
    );
  }
}
