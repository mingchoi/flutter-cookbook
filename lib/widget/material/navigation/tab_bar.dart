import 'package:flutter_web/material.dart';
import 'package:flutter_cookbook/widget/utils/center.dart';
import '../utils.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Foo"),
              Tab(text: "Bar"),
              Tab(text: "FooBar"),
            ],
          ),
        ),
        body: TabBarView(children: [
          VerticalCenter([Text("Foo")]),
          VerticalCenter([Text("Bar")]),
          VerticalCenter([Text("FooBar")]),
        ]),
      ),
    );
  }
}
