import 'package:flutter/material.dart';

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<bool> _isExpanded = [false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expansion Panel")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ExpansionPanelList(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    _isExpanded[index] = !isExpanded;
                  });
                },
                children: [
                  ExpansionPanel(
                    isExpanded: this._isExpanded[0],
                    headerBuilder: (BuildContext context, bool isExpanded) =>
                        ListTile(title: Text("Hello")),
                    body: Text("world"),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
