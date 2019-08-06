import 'package:flutter_web/material.dart';
import 'package:flutter_cookbook/widget/utils/center.dart';
import 'package:flutter_cookbook/widget/material/utils.dart';

class GridViewDemo extends StatelessWidget {
  List<String> list = ["A", "B", "C", "D", "E"];

  @override
  Widget build(BuildContext context) {
    return buildAndroidPage(
      title: "Grid View",
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(8.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: list
            .map((String s) => Card(
                  child: VerticalCenter([
                    Text(
                      s,
                      style: TextStyle(fontSize: 100),
                    ),
                  ]),
                ))
            .toList(),
      ),
    );
  }
}
