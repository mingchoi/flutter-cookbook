import 'package:flutter_web/material.dart';
import 'package:flutter_cookbook/widget/utils/center.dart';
import '../utils.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  _BottomNavigationBarDemoState createState() =>
      _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _bottomBarIndex = 0;

  final List<Widget> pages = [
    Column(
      children: <Widget>[
        Text("Home Page"),
      ],
    ),
    Column(
      children: <Widget>[
        Text("Schedule Page"),
      ],
    ),
    Column(
      children: <Widget>[
        Text("Setting Page"),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return buildAndroidPage(
      title: "Bottom Navigation Bar",
      body: VerticalCenter([
        pages.elementAt(_bottomBarIndex),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            title: Text("Schedule"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
        currentIndex: _bottomBarIndex,
        onTap: (int index) {
          setState(() {
            _bottomBarIndex = index;
          });
        },
      ),
    );
  }
}
