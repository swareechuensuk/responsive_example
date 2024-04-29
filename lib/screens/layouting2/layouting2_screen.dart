import 'package:flutter/material.dart';

class Layouting2Screen extends StatelessWidget {
  const Layouting2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isLandscape = mediaQuery.orientation == Orientation.landscape;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layouting2 Screen'),
      ),
      body: isLandscape
          ? Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
    );
  }
}
