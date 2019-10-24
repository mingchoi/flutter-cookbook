import 'package:flutter/material.dart';

class DataTableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Table")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
      ),
    );
  }
}
