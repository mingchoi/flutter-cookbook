import 'package:flutter_web/material.dart';
import 'package:flutter_cookbook/widget/utils/center.dart';
import 'package:flutter_cookbook/widget/material/utils.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildAndroidPage(
      title: "Image",
      body: VerticalCenter([
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
    );
  }
}
