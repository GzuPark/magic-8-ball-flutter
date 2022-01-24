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
      body: Container(),
    );
  }
}
