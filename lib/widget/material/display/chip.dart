import 'package:flutter_web/material.dart';
import 'package:flutter_cookbook/widget/utils/center.dart';
import 'package:flutter_cookbook/widget/material/utils.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> list = ["Foo", "Bar", "FooBar"];

  @override
  Widget build(BuildContext context) {
    return buildAndroidPage(
      title: "Chip",
      body: VerticalCenter(
        list.map((String t) => _buildChip(t)).toList(),
      ),
    );
  }

  Widget _buildChip(String text) {
    return Chip(
      avatar: CircleAvatar(
        backgroundImage: NetworkImage("https://picsum.photos/400/300"),
      ),
      label: Text(text),
      backgroundColor: Colors.orange,
      deleteIcon: Icon(Icons.close),
      onDeleted: () {
        setState(() => list.remove(text));
      },
    );
  }
}
