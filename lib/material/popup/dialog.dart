import 'package:flutter/material.dart';

class DialogDemo extends StatefulWidget {
  @override
  _DialogDemoState createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  AlertDialog _buildAlertDialog() => AlertDialog(
        title: Text("Title"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text("Alert Message"),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text("Confirm"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      );

  SimpleDialog _buildSimpleDialog() => SimpleDialog(
        title: Text("Choose action"),
        children: <Widget>[
          SimpleDialogOption(
            child: Text("Option 1"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SimpleDialogOption(
            child: Text("Option 2"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );

  void _showDialog(BuildContext context, String type) {
    if (type == "alert") {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) => _buildAlertDialog(),
      );
    } else {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) => _buildSimpleDialog(),
      );
    }
  }

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 100), () {
      _showDialog(context, "simple");
      _showDialog(context, "alert");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Dialog")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Show Alert Dialog"),
                onPressed: () => _showDialog(context, "alert"),
              ),
              RaisedButton(
                child: Text("Show Simple Dialog"),
                onPressed: () => _showDialog(context, "simple"),
              ),
            ]),
      ),
    );
  }
}
