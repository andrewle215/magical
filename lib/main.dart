import 'package:flutter/material.dart';
import 'dart:math';

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
      backgroundColor: Colors.blueGrey.shade500,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}


class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  num = Random().nextInt(2) + 1;
               });
              },
              child: Image.asset('images/ball$num.png'),
            ),
          ),
        ],
      ),
    );
  }
}

