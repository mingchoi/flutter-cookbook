import 'package:flutter_web/material.dart';
import '../utils.dart';
import 'package:flutter_cookbook/widget/utils/center.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildAndroidPage(
      title: "Button",
      appBar: AppBar(
        title: Text("Button"),
        actions: <Widget>[
          // Popup Menu Button
          PopupMenuButton<String>(
            onSelected: (String result) {},
            itemBuilder: (BuildContext context) =>
            [
              PopupMenuItem(value: "Foo", child: Text("Foo")),
              PopupMenuItem(value: "Bar", child: Text("Bar")),
            ],
          ),
          SizedBox(width: 40.0),
        ],
      ),
      body: VerticalCenter(
        [
          Row(
            children: <Widget>[
              // Flat Button
              FlatButton(
                child: Text("Submit"),
                onPressed: () {},
                color: Theme
                    .of(context)
                    .primaryColor,
                textColor: Colors.white,
              ),
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.home),
                label: Text("Default"),
                textColor: Colors.blue,
              ),
              FlatButton(
                child: Text("Disabled"),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          Divider(),
          Row(
            children: <Widget>[
              // Raised Button
              RaisedButton(
                child: Text("Submit"),
                onPressed: () {},
                color: Theme
                    .of(context)
                    .primaryColor,
                textColor: Colors.white,
              ),
              RaisedButton(
                child: Text("Default"),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("Disabled"),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          Divider(),
          Row(
            children: <Widget>[
              // Icon Button
              IconButton(
                icon: Icon(Icons.phone),
                color: Colors.red,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.phone),
                color: Colors.red,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          Divider(),
          Row(
            children: <Widget>[
              // Dropdown Button
              DropdownButton<String>(
                value: "One",
                onChanged: (String newValue) {},
                items: <String>['One', 'Two', 'Free', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ],
      ),
      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: () {},
      ),
      // Button Bar
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
