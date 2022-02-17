import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

String newTaskTitle = '';

class AddTask extends StatelessWidget {
  final Function addTaskCallback;

  AddTask({required this.addTaskCallback});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
            ),
            TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                  //print(newTaskTitle);
                }
                ),
            FlatButton(
                color: Colors.lightBlueAccent,
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },

            )
          ],
        ),
      ),
    );
  }
}
