import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Layouting3Screen extends StatelessWidget {
  const Layouting3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Layouting3 Screen'),
        ),
        body: Wrap(
          children: [
            ConstrainedBox(
                constraints: const BoxConstraints(
                    minWidth: 150,
                    maxWidth: 250,
                    minHeight: 150,
                    maxHeight: 250),
                child: Container(
                  color: Colors.red,
                )),
            ConstrainedBox(
                constraints: const BoxConstraints(
                    minWidth: 150,
                    maxWidth: 250,
                    minHeight: 150,
                    maxHeight: 250),
                child: Container(
                  color: Colors.blue,
                )),
            ConstrainedBox(
                constraints: const BoxConstraints(
                    minWidth: 150,
                    maxWidth: 250,
                    minHeight: 150,
                    maxHeight: 250),
                child: Container(
                  color: Colors.yellow,
                )),
          ],
        ));
  }
}
