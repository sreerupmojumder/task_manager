
import 'package:flutter/material.dart';

class TaskCardModel extends StatelessWidget {
  final String taskTitle;
  final String taskSubTitle;
  final String taskDate;
  final String taskState;

  const TaskCardModel({
    super.key,
    required this.taskTitle,
    required this.taskSubTitle,

    required this.taskState,
    this.taskDate = 'No Date',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          taskTitle,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18),
        ),

        subtitle: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 5),
            Text(taskSubTitle),
            SizedBox(height: 8),
            Text(taskDate),
            SizedBox(height: 8),
            Row(
              children: [
                Chip(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  label: Text(taskState),
                  backgroundColor: Colors.blue,
                  labelStyle: TextStyle(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit_note, color: Colors.orange),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete_outline, color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
