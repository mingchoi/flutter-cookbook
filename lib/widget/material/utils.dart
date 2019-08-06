import 'package:flutter_web/material.dart';

Widget buildAndroidPage(
    {@required String title,
    @required Widget body,
    AppBar appBar,
    FloatingActionButton floatingActionButton,
    Widget bottomNavigationBar,
    Drawer drawer}) {
  return Scaffold(
    appBar: appBar != null
        ? appBar
        : AppBar(
            title: Text(title),
          ),
    body: SafeArea(child: body),
    floatingActionButton: floatingActionButton,
    bottomNavigationBar: bottomNavigationBar,
    drawer: drawer,
  );
}
