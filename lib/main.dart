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
    final List<String> items =
        List<String>.generate(10000, (index) => 'Item $index');

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(items[index]),
            leading: const Icon(
              Icons.insert_photo,
              color: Colors.red,
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
        );
      },
    );
  }
}
