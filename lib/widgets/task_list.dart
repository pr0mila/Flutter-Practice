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
            final task = taskdata.tasks[index];
            return TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                checkboxCallback : (bool value) {
                  taskdata.updateTask(task);
                },
                longpressCallback: (){
                  taskdata.deleteTask(task);
                },

            );
          },
          itemCount: taskdata.taskCount,
        );
      }
    );
  }
}
