import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class LinearProgressIndicatorDemo extends StatefulWidget {
  @override
  _LinearProgressIndicatorDemoState createState() =>
      _LinearProgressIndicatorDemoState();
}

class _LinearProgressIndicatorDemoState
    extends State<LinearProgressIndicatorDemo> {
  double progress = 0.0;

  @override
  void initState() {
    Timer.periodic(Duration(milliseconds: 60), (Timer t) {
      setState(() {
        progress = sin(t.tick / 60).abs();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Linear Progress Indicator")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinearProgressIndicator(value: progress),
            ]),
      ),
    );
  }
}
