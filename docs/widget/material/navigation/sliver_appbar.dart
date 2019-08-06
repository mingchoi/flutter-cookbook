import 'package:flutter_web/material.dart';
import 'package:flutter_cookbook/widget/utils/center.dart';
import '../utils.dart';

class SliverAppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text("Sliver App Bar"),
            background: Image(
              image: NetworkImage("https://picsum.photos/800/400"),
              fit: BoxFit.cover,
            ),
          ),
          floating: false,
          pinned: true,
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            SizedBox(height: 150.0),
            Text("Hello world"),
            SizedBox(height: 150.0),
            Text("Hello world"),
            SizedBox(height: 150.0),
            Text("Hello world"),
            SizedBox(height: 150.0),
            Text("Hello world"),
            SizedBox(height: 150.0),
          ]),
        )
      ],
    ));
  }
}
