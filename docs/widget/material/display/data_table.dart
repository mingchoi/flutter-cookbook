import 'package:flutter_web/material.dart';
import 'package:flutter_cookbook/widget/utils/center.dart';
import 'package:flutter_cookbook/widget/material/utils.dart';

class DataTableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildAndroidPage(
      title: "Data Table",
      body: VerticalCenter([
        DataTable(columns: [
          DataColumn(label: Text("First")),
          DataColumn(label: Text("Second")),
          DataColumn(label: Text("Third")),
        ], rows: [
          DataRow(cells: [
            DataCell(Text("A")),
            DataCell(Text("B")),
            DataCell(Text("C")),
          ]),
          DataRow(cells: [
            DataCell(Text("D")),
            DataCell(Text("E")),
            DataCell(Text("F")),
          ]),
        ]),
      ]),
    );
  }
}
