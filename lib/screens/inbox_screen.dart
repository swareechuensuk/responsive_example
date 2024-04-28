import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_example/components/inbox_item.dart';
import 'package:responsive_example/types/inbox_message.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  List<InboxMessage> messages = [
    InboxMessage(
        title: 'Team Meeting',
        subtitle: 'Weekly sync at 10:00 AM',
        time: '10m'),
    InboxMessage(
        title: 'Comprehensive Annual Review Meeting and Strategic Planning for Upcoming Fiscal Year Initiatives',
        subtitle: 'Final review due today',
        time: '1h'),
    InboxMessage(
        title: 'Lunch Order',
        subtitle: 'Ordering pizza for the team',
        time: '3h'),
    InboxMessage(
        title: 'Flight Reminder',
        subtitle: 'Check-in for your flight',
        time: '1d'),
    InboxMessage(
        title: 'Software Update',
        subtitle: 'System maintenance at 9 PM',
        time: '2d'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Inbox'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.inbox))],
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: messages.asMap().entries.map((entry) {
            int idx = entry.key;
            InboxMessage message = entry.value;
            return Padding(
              padding:
                  EdgeInsets.only(bottom: idx == messages.length - 1 ? 0 : 8.0),
              child: InboxItem(
                message: message,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
