import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BossLevel());
}

class BossLevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(
            child: Text(
              "Ask Me Anything",
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        body: BossLevelImage(),
      ),
    );
  }
}

class BossLevelImage extends StatefulWidget {
  const BossLevelImage({Key? key}) : super(key: key);

  @override
  State<BossLevelImage> createState() => _BossLevelImageState();
}

class _BossLevelImageState extends State<BossLevelImage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(4) + 1;
                });
              },
              child: Image.asset("images/ball$ballNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}
