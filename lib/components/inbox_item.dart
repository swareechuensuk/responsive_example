import 'package:flutter/material.dart';
import 'package:responsive_example/style_utils/card_style.dart';
import 'package:responsive_example/types/inbox_message.dart';

class InboxItem extends StatelessWidget {
  final InboxMessage message;
  final VoidCallback? onPress;

  const InboxItem({super.key, required this.message, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: cardStyle(),
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(right: 16),
              decoration: const BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.announcement,
                size: 16,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(message.subtitle),
                ],
              ),
            ),
            Text(message.time),
          ],
        ),
      ),
    );
  }
}
