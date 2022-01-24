import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      backgroundColor: Colors.blue,
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  List<Color> colors = [
    Colors.teal,
    Colors.red,
    Colors.grey,
    Colors.green,
    Colors.white,
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: colors[ballNumber - 1],
        child: TextButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: () {
            setState(() => ballNumber = Random().nextInt(5) + 1); // 1 - 5
          },
        ),
      ),
    );
  }
}
