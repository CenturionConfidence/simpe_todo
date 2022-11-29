import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './task.dart';
import 'tasks_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) {
        return TaskData();
      },
      child: const MaterialApp(
        home: TasksScreen(),

      ),
    ),
  );
}
