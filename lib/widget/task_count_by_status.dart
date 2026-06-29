import 'package:flutter/material.dart';

class TaskCountByStatus extends StatelessWidget {
  final String title;
  final int count;
  const TaskCountByStatus({super.key, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(count.toString(), style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 5),
            Text(title, style: Theme.of(context).textTheme.titleSmall),
          ],
        ),
      ),
    );
  }
}
