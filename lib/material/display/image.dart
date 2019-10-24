import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                  image: AssetImage("images/empty-image.png"),
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover),
              FadeInImage(
                placeholder: AssetImage("images/empty-image.png"),
                image: NetworkImage("https://picsum.photos/400/300"),
                width: 400,
                height: 300,
                fit: BoxFit.cover,
              ),
            ]),
      ),
    );
  }
}
