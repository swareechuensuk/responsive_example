import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WrapScreen extends StatelessWidget {
  const WrapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 8.0, // Horizontal space between tags
          runSpacing: 4.0, // Vertical space between lines
          children: <Widget>[
            TagChip(label: 'New'),
            TagChip(label: 'Sale'),
            TagChip(label: 'Hot Hit'),
            TagChip(label: 'For Men'),
            TagChip(label: 'Oversized'),
            TagChip(label: "Limited Edition"),
            TagChip(label: "Best Seller"),
            TagChip(label: "Eco-Friendly"),
            TagChip(label: "Exclusive"),
            TagChip(label: "50% Off"),
            TagChip(label: "New Arrival"),
            TagChip(label: "Seasonal"),
            TagChip(label: "Online Only"),
            TagChip(label: "2 for 1"),
            TagChip(label: "Clearance"),
          ],
        ),
      ),
    );
  }
}

class TagChip extends StatelessWidget {
  final String label;

  TagChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20.0), // Maxed out border radius
          border: Border.all(color: Colors.white)),
      child: Text(label, style: TextStyle(color: Colors.white)),
    );
  }
}
