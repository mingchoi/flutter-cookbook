import 'dart:async';
import 'dart:math';
import 'package:flutter_web/material.dart';
import 'package:flutter_cookbook/widget/utils/center.dart';
import 'package:flutter_cookbook/widget/material/utils.dart';

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
        progress = sin(t.tick/60).abs();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return buildAndroidPage(
      title: "Image",
      body: VerticalCenter([
        LinearProgressIndicator(value: progress),
      ]),
    );
  }
}
