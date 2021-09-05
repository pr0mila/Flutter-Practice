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

enum Animals {cat, dog, fish}


class _MyHomePageState extends State<MyHomePage> {
  Animals _selected = Animals.cat;
  String _value ="Select an option";
  List<PopupMenuEntry<Animals>> _items = <PopupMenuEntry<Animals>>[];

  @override
  void initState() {
    for(Animals animal in Animals.values) {
      _items.add(new PopupMenuItem(
        child: new Text(_getDisplay(animal),),
        value: animal,
      ));
    }
  }

  void _onSelected(Animals animal) {
    setState((){
      _selected = animal;
      _value = 'You Selected ${_getDisplay(animal)}';
    });
  }

  String _getDisplay(Animals animal) {
    int index = animal.toString().indexOf('.');
    index++;
    return animal.toString().substring(index);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: new Container(
            padding: new EdgeInsets.all(32.0),
            child: new Center(
              child: new Row(
                children: <Widget>[
                  new Container(
                    padding: new EdgeInsets.all(5.0),
                    child: new Text(_value),
                  ),
                  new PopupMenuButton<Animals>(
                      child:  new Icon(Icons.input),
                      initialValue: Animals.cat,
                      onSelected: _onSelected,
                      itemBuilder: (BuildContext context) {
                        return _items;
                      }
                  )
                ],


              ),
            ))
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
