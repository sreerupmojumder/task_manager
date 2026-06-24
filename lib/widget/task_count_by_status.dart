import 'package:flutter/material.dart';

class TaskCountByStatus extends StatelessWidget {
  const TaskCountByStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text('09', style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 5),
            Text('Canceled', style: Theme.of(context).textTheme.titleSmall),
          ],
        ),
      ),
    );
  }
}
