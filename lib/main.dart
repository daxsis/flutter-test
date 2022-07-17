import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Adding Assets'),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              const Image(
                image: AssetImage('assets/images/22867546-bg.jpg'),
              ),
              Image.asset('assets/icons/22867548-icon.png'),
            ],
          ),
        ),
      ),
    );
  }
}
