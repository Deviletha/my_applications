import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyTable(),
  ));
}

class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Table View"),),
      body: Center(
        child: DataTable(
          decoration: BoxDecoration(border: Border.all(width: 6)),
          columns: [
            DataColumn(label: Text("ID")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Age")),
            DataColumn(label: Text("Phone"))
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text("1")),
              DataCell(Text("Sayu")),
              DataCell(Text("29")),
              DataCell(Text("9845623515"))
            ]),
            DataRow(cells: [
              DataCell(Text("2")),
              DataCell(Text("Swathi")),
              DataCell(Text("25")),
              DataCell(Text("9845623515"))
            ]),
            DataRow(cells: [
              DataCell(Text("3")),
              DataCell(Text("Ashmi")),
              DataCell(Text("23")),
              DataCell(Text("9845623515"))
            ]),
            DataRow(cells: [
              DataCell(Text("4")),
              DataCell(Text("Keethu")),
              DataCell(Text("23")),
              DataCell(Text("9845623515"))
            ]),
            DataRow(cells: [
              DataCell(Text("5")),
              DataCell(Text("Athi")),
              DataCell(Text("31")),
              DataCell(Text("9845623515"))
            ]),
            DataRow(cells: [
              DataCell(Text("6")),
              DataCell(Text("Ponnu")),
              DataCell(Text("34")),
              DataCell(Text("9845623515"))
            ]),
          ],
        ),
      ),
    );
  }
}
