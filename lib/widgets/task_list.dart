import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
 TaskList({required this.tasks});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkboxCallback : (bool value) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            }

        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
