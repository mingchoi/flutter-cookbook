import 'package:flutter_web/material.dart';
import 'package:flutter_cookbook/widget/utils/center.dart';
import 'package:flutter_cookbook/widget/material/utils.dart';

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildAndroidPage(
      title: "Card",
      body: VerticalCenter([
        Card(
          child: SizedBox(
            width: 240,
            height: 200,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Image(
                    image: NetworkImage("https://picsum.photos/400/300"),
                    fit: BoxFit.fill,
                    width: 240,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Foo Bar"),
                ),
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.list),
            title: Text("Hello world"),
          ),
        ),
      ]),
    );
  }
}
