import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkboxcallback (bool checkboxState) {
    setState(() {
     isChecked = checkboxState;
     });
  }

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Text('this is a item',style: TextStyle(decoration: isChecked? TextDecoration.lineThrough:null),),
      trailing: TaskCheckBox(checkboxState: isChecked,toggledcheckbox:checkboxcallback),
    );
  }
}

class TaskCheckBox extends StatelessWidget {

  TaskCheckBox({required this.checkboxState,required this.toggledcheckbox});

  final bool checkboxState;
  final Function toggledcheckbox;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggledcheckbox());
  }
}