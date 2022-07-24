import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List view",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Building List view"),
          centerTitle: true,
        ),
        body: const BodyListView(),
      ),
    );
  }
}

class BodyListView extends StatelessWidget {
  const BodyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }

  Widget _myListView() {
    return ListView(
      padding: const EdgeInsets.all(8),
      // shrinkWrap: true, <-- too expensive because flutter has to recompute the whole list
      // scrollDirection: Axis.horizontal,
      // itemExtent: 300, // scroll axis size, will increase performance because flutter does need to calculate sizing
      reverse: true,
      children: const <Widget>[
        ListTile(
          title: Text("Sun"),
          subtitle: Text("Today clear"),
          leading: Icon(Icons.wb_sunny),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
            title: Text("Cloudy"),
            leading: Icon(Icons.wb_cloudy),
            trailing: Icon(Icons.keyboard_arrow_right)),
        ListTile(
            title: Text("Snow"),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right)),
      ],
    );
  }
}
