import 'package:flutter_web/material.dart';
import 'package:flutter_cookbook/widget/utils/center.dart';
import '../utils.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildAndroidPage(
      title: "Drawer",
      body: VerticalCenter([Text("Hello World")]),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Foo Bar"),
              accountEmail: Text("foo@bar.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://picsum.photos/400/300?TT=123"),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/400/300?TT=456"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text("Schedule"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
