import 'package:flutter/material.dart';
import 'package:responsive_example/style_utils/card_style.dart';

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
        child: const Column(
          children: [
            SearchBar(),
            SizedBox(
              height: 8,
            ),
            MainMenuRow(),
          ],
        ),
      ),
    );
  }
}

class MainMenuRow extends StatelessWidget {
  const MainMenuRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: cardStyle(),
            child: const Column(
              children: [Icon(Icons.face), Text('Menu1')],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: cardStyle(),
            child: const Column(
              children: [Icon(Icons.face_2), Text('Menu1')],
            ),
          ),
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: cardStyle(),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(right: 16),
                      decoration: const BoxDecoration(
                          color: Colors.pink, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.search,
                        size: 16,
                        color: Colors.white,
                      )),
                  const Expanded(child: Text('Search'))
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: cardStyle(),
              child: const Icon(
                Icons.qr_code_scanner,
              ),
            ),
          )
        ],
      ),
    );
  }
}
