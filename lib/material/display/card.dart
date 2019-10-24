import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card")),
      body: Column(children: [
        Card(
          child: SizedBox(
            width: 240,
            height: 200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
