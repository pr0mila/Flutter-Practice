import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

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
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget> [
            const Text('Add Task',textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent,fontSize: 30.0),),
          const TextField(autofocus: true,textAlign: TextAlign.center),
            FlatButton(onPressed: (){}, color: Colors.lightBlueAccent, child: const Text('Add',style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
