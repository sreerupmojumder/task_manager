import 'package:flutter/material.dart';
import 'package:task_manager/screens/add_new_task_screen.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/widget/task_card_model.dart';
import 'package:task_manager/widget/task_count_by_status.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 90,
              child: ListView.separated(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    TaskCountByStatus(count: 20, title: 'Canceled'),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 10);
                },
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => TaskCardModel(
                  taskTitle: 'Lorem Ipsum is simply dummy',
                  taskSubTitle:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library in London, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset's Body Type sheets.",
                  taskDate: '10-05-2000',
                  taskState: 'New',
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.pColor,
        shape: CircleBorder(),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNewTaskScreen()),
          );
        },

        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
    );
  }
}
