import 'package:flutter_web/material.dart';
import 'package:flutter_cookbook/widget/utils/center.dart';
import 'package:flutter_cookbook/widget/material/utils.dart';

class ProgressIndicatorDemo extends StatefulWidget {
  @override
  _ProgressIndicatorDemoState createState() => _ProgressIndicatorDemoState();
}

class _ProgressIndicatorDemoState extends State<ProgressIndicatorDemo> {
  bool _loading = true;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return buildAndroidPage(
      title: "Progress Indicator",
      body: VerticalCenter([
        _loading ? CircularProgressIndicator() : Text("Loading done"),
        SizedBox(height: 10),
        RaisedButton(
          child: Text("Load again"),
          onPressed: () {
            setState(() {
              _loading = true;
            });
            Future.delayed(Duration(seconds: 1), () {
              setState(() {
                _loading = false;
              });
            });
          },
        ),
      ]),
    );
  }
}
