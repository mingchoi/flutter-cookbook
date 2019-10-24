import 'package:flutter/material.dart';

class TooltipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tooltip")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Tooltip(
                message: "Full Screen",
                child: IconButton(
                  icon: Icon(Icons.fullscreen),
                  onPressed: () {},
                ),
              ),
            ]),
      ),
    );
  }
}
