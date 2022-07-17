import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: const <Widget>[
              Text("Test"),
              CounterWidget(),
              Text("Test"),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  _CounterWidget createState() => _CounterWidget();
}

class _CounterWidget extends State<CounterWidget> {
  late int _counter;
  @override
  void initState() {
    _counter = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: _increment,
            icon: const Icon(Icons.exposure_plus_1_rounded),
          ),
          Text('${(_counter)}'),
          IconButton(
            onPressed: _decrement,
            icon: const Icon(Icons.exposure_minus_1_rounded),
          ),
        ],
      ),
    );
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }
}
