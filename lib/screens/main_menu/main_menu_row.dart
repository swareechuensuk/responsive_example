import 'package:flutter/material.dart';
import 'package:responsive_example/style_utils/card_style.dart';

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
              children: [Icon(Icons.local_hospital), Text('Appointments')],
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
              children: [Icon(Icons.chat), Text('Consultations')],
            ),
          ),
        ),
      ],
    );
  }
}
