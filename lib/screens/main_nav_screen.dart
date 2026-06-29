import 'package:flutter/material.dart';
import 'package:task_manager/screens/new_task_screen.dart';
import 'package:task_manager/screens/progress_screen.dart';

import 'package:task_manager/widget/tm_appbar.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({super.key});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int selectedIndex = 0;

  List screens = [
    NewTaskScreen(),
    ProgressScreen(),
    Center(child: Text('Completed')),
    Center(child: Text('Cancel')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmAppbar(),
      body: screens[selectedIndex],

      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,

        onDestinationSelected: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },

        destinations: [
          NavigationDestination(icon: Icon(Icons.task), label: 'New Task'),
          NavigationDestination(icon: Icon(Icons.refresh), label: 'Progress'),
          NavigationDestination(
            icon: Icon(Icons.task_alt_outlined),
            label: 'Completed',
          ),
          NavigationDestination(
            icon: Icon(Icons.cancel_outlined),
            label: 'Cancel',
          ),
        ],
      ),
    );
  }
}
