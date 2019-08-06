import 'package:flutter_web/material.dart';
import 'package:flutter_cookbook/widget/utils/center.dart';
import '../utils.dart';

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<bool> _isExpanded = [false];

  @override
  Widget build(BuildContext context) {
    return buildAndroidPage(
      title: "Expansion Panel",
      body: VerticalCenter([
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
    );
  }
}
