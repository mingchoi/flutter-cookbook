import 'package:flutter_web/material.dart';

Widget VerticalCenter(List<Widget> body) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: body,
    ),
  );
}
