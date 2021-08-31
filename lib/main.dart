import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'My Practice'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //String _value = 'Nothing yet';
  int counter = 0;
  List<Widget> _list = [];
  void initState() {
    for (int i = 0; i < 5; i++) {
      Widget child = _newitem(i);
      _list.add(child);
    }
  }

  void _onPressed() {
    Widget child = _newitem(counter);
    setState(() => _list.add(child));
  }

  Widget _newitem(int i) {
    Key key = new Key('_item ${i}');
    Container child = new Container(
      key: key,
      padding: new EdgeInsets.all(10.0),
      child: new Chip(
        label: new Text('${i} name here'),
        deleteIconColor: Colors.redAccent,
        deleteButtonTooltipMessage: 'Delete',
        onDeleted: () => _removeitem(key),
        avatar: CircleAvatar(
            backgroundColor: Colors.greenAccent, child: new Text(i.toString())),
      ),
    );
    counter++;
    return child;
  }

  void _removeitem(Key key) {
    for (int i = 0; i < _list.length; i++) {
      Widget child = _list.removeAt(i);
      print('Removing ${key.toString()} ');
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: _onPressed,
          child: new Icon(Icons.add),
        ),
        body: new Container(
            padding: new EdgeInsets.all(32.0),
            child: new Center(
              child: new Column(
                children: _list,

              ),
            ))
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
