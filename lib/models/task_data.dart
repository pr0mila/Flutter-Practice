import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),
  ];

  int get taskCount{
    return tasks.length;
  }

}