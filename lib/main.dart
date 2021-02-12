import 'package:calculou/widgets/body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Calculou());
}

class Calculou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculou',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: Body(),
      ),
    );
  }
}
