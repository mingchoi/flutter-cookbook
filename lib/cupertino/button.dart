import 'package:flutter/cupertino.dart';

class IosButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Button"),
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              CupertinoButton(
                child: Text("Submit"),
                onPressed: () {},
              ),
              CupertinoButton.filled(
                child: Text("Submit"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
