import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  //const TaskTile ({Key? key, required this.title}) : super(key: key);
  //final String title;

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'this is text',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TextCheckBox(
          checkboxState: isChecked,
          toggleCheckbox: (bool value) {
            setState(() {
              isChecked = value;
            });
          }),
    );
  }
}

class TextCheckBox extends StatelessWidget {
  const TextCheckBox(
      {required this.checkboxState, required this.toggleCheckbox});
  final bool checkboxState;
  final Function(bool value) toggleCheckbox;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkboxState,
        onChanged: (value) {
          toggleCheckbox(value!);
        });
  }
}
