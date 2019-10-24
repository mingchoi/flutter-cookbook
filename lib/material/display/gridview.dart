import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  List<String> list = ["A", "B", "C", "D", "E"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View")),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(8.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: list
            .map((String s) => Card(
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            s,
                            style: TextStyle(fontSize: 100),
                          ),
                        ]),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
