import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  int counter = 0;
  List<Widget> _list = [];

  @override
  void initState() {
    for (int i = 0; i < 5; i++) {
      Widget child = _newItem(i);
      _list.add(child);
    }
  }

  void _onClicked() {
    Widget child = _newItem(counter);
    setState(() => _list.add(child));
  }

  Widget _newItem(int i)  {
    Key key = Key('item_${i}');
    Container child = Container(
      key: key,
      padding: EdgeInsets.all(10.0),
      child: Chip(
        label: Text('${i} Name here'),
        deleteIconColor: Colors.red,
        deleteButtonTooltipMessage: 'Delete',
        onDeleted: () => _removeItem(key),
        avatar: CircleAvatar(
          backgroundColor: Colors.greenAccent,
          child: Text(i.toString()),
        ),
      ),
    );

    counter++;
    return child;
  }

  void _removeItem(Key key) {
    for(int i = 0; i < _list.length; i++) {
      Widget child = _list.elementAt(i);
      if(child.key == key) {
        setState(() => _list.removeAt(i));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chips and Keys'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _onClicked, child: const Icon(Icons.add),),

      body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: _list,
            ),
          )
      ),
    );
  }
}