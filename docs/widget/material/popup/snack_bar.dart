import 'package:flutter_web/material.dart';
import 'package:flutter_cookbook/widget/utils/center.dart';
import '../utils.dart';

class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return buildAndroidPage(
      title: "Snack Bar",
      body: VerticalCenter([
        RaisedButton(
          child: Text("Show snack bar"),
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text("Hello"),
                action: SnackBarAction(
                  label: "Undo",
                  onPressed: () {},
                ),
              ),
            );
          },
        ),
      ]),
    );
  }
}
