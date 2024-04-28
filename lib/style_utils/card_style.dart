import 'package:flutter/material.dart';

BoxDecoration cardStyle() {
  return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 0,
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ],
      borderRadius: BorderRadius.circular(12));
}
