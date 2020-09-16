import 'package:flutter/material.dart';

class ChangeText extends StatelessWidget {
  final String frase;

  ChangeText(this.frase);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        frase,
        style: TextStyle(fontSize: 15),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
