import 'package:flutter_web/material.dart';
import 'package:flutter_cookbook/widget/utils/center.dart';
import 'package:flutter_cookbook/widget/material/utils.dart';

class TooltipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildAndroidPage(
      title: "Image",
      body: VerticalCenter([
        Tooltip(
          message: "Full Screen",
          child: IconButton(
            icon: Icon(Icons.fullscreen),
            onPressed: () {},
          ),
        ),
      ]),
    );
  }
}
