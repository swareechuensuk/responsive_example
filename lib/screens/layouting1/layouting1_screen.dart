import 'package:flutter/material.dart';

class Layouting1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layouting1 Screen'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            // Wide layout
            return Row(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.red,
                )),
                Expanded(
                    child: Container(
                  color: Colors.blue,
                )),
              ],
            );
          } else {
            // Not wide layout
            return Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.red,
                )),
                Expanded(
                    child: Container(
                  color: Colors.blue,
                )),
              ],
            );
          }
        },
      ),
    );
  }
}
