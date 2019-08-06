import 'package:flutter_web/cupertino.dart';

Widget buildIOSPage({@required String title, @required Widget body}) {
  return CupertinoPageScaffold(
    navigationBar: CupertinoNavigationBar(
      middle: Text(title),
    ),
    child: SafeArea(child: body),
  );
}
