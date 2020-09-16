import 'package:flutter/material.dart';

import './changeText.dart';

void main() {
  runApp(AppPractica());
}

class AppPractica extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<AppPractica> {
  int indexFrase = 0;
  final frases = const ['hellow world!', 'Hola mundo!', 'Hellow mundo'];

  int pulsador() {
    setState(() {
      indexFrase++;
      if (indexFrase >= frases.length) {
        indexFrase = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Practice'),
        ),
        body: ChangeText(frases[indexFrase]),
        floatingActionButton: FloatingActionButton(
          onPressed: pulsador,
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
