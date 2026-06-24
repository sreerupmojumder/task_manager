import 'package:flutter/material.dart';
import 'package:task_manager/utils/app_colors.dart';
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
                itemBuilder: (context, index) => TaskCountByStatus(),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 10);
                },
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text(
                      'Lorem Ipsum is simply dummy',
                      style: Theme.of(
                        context,
                      ).textTheme.titleLarge!.copyWith(fontSize: 18),
                    ),

                    subtitle: Column(
                      crossAxisAlignment: .start,
                      children: [
                        SizedBox(height: 5),
                        Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy',
                        ),
                        SizedBox(height: 8),
                        Text('Date: 20-10-2000'),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Chip(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 5,
                              ),
                              label: Text('New'),
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
                              icon: Icon(
                                Icons.delete_outline,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.pColor,
        shape: CircleBorder(),
        onPressed: () {},

        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
    );
  }
}
