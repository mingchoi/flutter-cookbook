import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:html';

import 'material/buttons/button.dart';
import 'material/display/card.dart';
import 'material/display/chip.dart';
import 'material/display/data_table.dart';
import 'material/display/gridview.dart';
import 'material/display/image.dart';
import 'material/display/linear_progress_indicator.dart';
import 'material/display/progress_indicator.dart';
import 'material/display/tooltip.dart';
import 'material/navigation/bottom_navigation_bar.dart';
import 'material/navigation/drawer.dart';
import 'material/navigation/sliver_appbar.dart';
import 'material/navigation/tab_bar.dart';
import 'material/popup/dialog.dart';
import 'material/popup/expansion_panel.dart';
import 'material/popup/snack_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Widget body;
    switch (window.localStorage["flutter_launch"]) {
      case "widget/material/buttons/button.dart":
        body = ButtonDemo();
        break;
      case "widget/material/navigation/bottom_navigation_bar.dart":
        body = BottomNavigationBarDemo();
        break;
      case "widget/material/navigation/sliver_appbar.dart":
        body = SliverAppBarDemo();
        break;
      case "widget/material/navigation/drawer.dart":
        body = DrawerDemo();
        break;
      case "widget/material/navigation/tab_bar.dart":
        body = TabBarDemo();
        break;
      case "widget/material/popup/dialog.dart":
        body = DialogDemo();
        break;
      case "widget/material/popup/snack_bar.dart":
        body = SnackBarDemo();
        break;
      case "widget/material/popup/expansion_panel.dart":
        body = ExpansionPanelDemo();
        break;
      case "widget/material/display/card.dart":
        body = CardDemo();
        break;
      case "widget/material/display/chip.dart":
        body = ChipDemo();
        break;
      case "widget/material/display/progress_indicator.dart":
        body = ProgressIndicatorDemo();
        break;
      case "widget/material/display/data_table.dart":
        body = DataTableDemo();
        break;
      case "widget/material/display/gridview.dart":
        body = GridViewDemo();
        break;
      case "widget/material/display/image.dart":
        body = ImageDemo();
        break;
      case "widget/material/display/linear_progress_indicator.dart":
        body = LinearProgressIndicatorDemo();
        break;
      case "widget/material/display/tooltip.dart":
        body = TooltipDemo();
        break;
      default:
        body = ButtonDemo();
        break;
    }

    return MaterialApp(
      title: 'Flutter Cookbook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: body,
    );
  }
}
