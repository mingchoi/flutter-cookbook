import 'package:flutter_web/cupertino.dart';
import 'utils.dart';

class IosButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildIOSPage(
      title: "Button",
      body: Center(
        child: Column(
          children: <Widget>[
            CupertinoButton(
              child: Text("Submit"),
              onPressed: () {},
            ),
            CupertinoButton.filled(
              child: Text("Submit"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
