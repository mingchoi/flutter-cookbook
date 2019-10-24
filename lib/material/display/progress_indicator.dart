import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(title: Text("Progress Indicator")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
      ),
    );
  }
}
