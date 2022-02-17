import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
            isChecked: tasks[index].isDone,
            taskTitle: tasks[index].name,
            checkboxCallback : (bool value) {
              setState(() {
                tasks[index].toggleDone();
              });
            }

        );
      },
      itemCount: tasks.length,
    );
  }
}
