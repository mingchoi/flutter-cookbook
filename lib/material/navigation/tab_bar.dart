import 'package:flutter/material.dart';

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
          Column(children: [Text("Foo")]),
          Column(children: [Text("Bar")]),
          Column(children: [Text("FooBar")]),
        ]),
      ),
    );
  }
}
