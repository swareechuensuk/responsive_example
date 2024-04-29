import 'package:flutter/material.dart';
import 'package:responsive_example/style_utils/card_style.dart';

class MainMenuGrid extends StatelessWidget {
  const MainMenuGrid({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: cardStyle(),
                  child: const Column(
                    children: [Icon(Icons.assignment_ind), Text('Profile')],
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: cardStyle(),
                  child: const Column(
                    children: [Icon(Icons.medication), Text('Medications')],
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: cardStyle(),
                  child: const Column(
                    children: [Icon(Icons.healing), Text('Health Plans')],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: cardStyle(),
                  child: const Column(
                    children: [Icon(Icons.calendar_today), Text('Schedule')],
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: cardStyle(),
                  child: const Column(
                    children: [
                      Icon(Icons.notifications),
                      Text('Notifications')
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: cardStyle(),
                  child: const Column(
                    children: [Icon(Icons.help_outline), Text('Help')],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: cardStyle(),
                  child: const Column(
                    children: [Icon(Icons.calendar_today), Text('Schedule')],
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: cardStyle(),
                  child: const Column(
                    children: [
                      Icon(Icons.notifications),
                      Text('Notifications')
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: cardStyle(),
                  child: const Column(
                    children: [Icon(Icons.help_outline), Text('Help')],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
