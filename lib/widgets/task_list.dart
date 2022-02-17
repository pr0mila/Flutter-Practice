import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskList extends StatelessWidget {


  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext,taskdata, child){
        return ListView.builder(
          itemBuilder: (context, int index) {
            return TaskTile(
                isChecked: taskdata.tasks[index].isDone,
                taskTitle: taskdata.tasks[index].name,
                checkboxCallback : (bool value) {
                  // setState(() {
                  //   widget.tasks[index].toggleDone();
                  // });
                }

            );
          },
          itemCount: taskdata.taskCount,
        );
      }
    );
  }
}
