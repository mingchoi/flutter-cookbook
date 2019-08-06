import 'package:flutter_web/material.dart';
import 'package:flutter_web/cupertino.dart';
import 'package:flutter_cookbook/widget/cupertino/button.dart';
import 'package:flutter_cookbook/widget/cupertino/scaffold.dart';
import 'package:flutter_cookbook/widget/material/buttons/button.dart';
import 'package:flutter_cookbook/widget/material/navigation/bottom_navigation_bar.dart';
import 'package:flutter_cookbook/widget/material/navigation/sliver_appbar.dart';
import 'package:flutter_cookbook/widget/material/navigation/drawer.dart';
import 'package:flutter_cookbook/widget/material/navigation/tab_bar.dart';
import 'package:flutter_cookbook/widget/material/popup/dialog.dart';
import 'package:flutter_cookbook/widget/material/popup/snack_bar.dart';
import 'package:flutter_cookbook/widget/material/popup/expansion_panel.dart';
import 'package:flutter_cookbook/widget/material/display/card.dart';
import 'package:flutter_cookbook/widget/material/display/chip.dart';
import 'package:flutter_cookbook/widget/material/display/progress_indicator.dart';
import 'package:flutter_cookbook/widget/material/display/data_table.dart';
import 'package:flutter_cookbook/widget/material/display/gridview.dart';
import 'package:flutter_cookbook/widget/material/display/image.dart';
import 'package:flutter_cookbook/widget/material/display/linear_progress_indicator.dart';
import 'package:flutter_cookbook/widget/material/display/tooltip.dart';
import 'dart:html';

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
