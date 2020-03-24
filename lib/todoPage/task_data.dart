import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:texttospeech/todoPage/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask({String newTaskTitle, int date, int month, int hr, int min}) {
    _tasks.add(
        Task(name: newTaskTitle, date: date, month: month, hr: hr, min: min));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
