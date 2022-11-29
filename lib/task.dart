import 'package:flutter/foundation.dart';

import 'dart:collection';

class Task {
  final String name;
  bool isdone = false;

  Task(this.name, this.isdone);

  void toggleDone() {
    isdone = !isdone; 
  }
}

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task('Buy milk', false),
    Task('Buy meat', false),
    Task('Buy milo', false),
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskcount => _tasks.length;

  void addTask(String text) {
    Task task = Task(text, false);
    _tasks.add(task);
    notifyListeners();
  }

  void updatetask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deletetask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
