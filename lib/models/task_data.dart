import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),
  ];

  int get taskCount{
    return _tasks.length;
  }

  List<Task> get tasks{
    return _tasks;
  }

  void addTask(String newTaskTitle)
  {
    final task = Task (name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

}