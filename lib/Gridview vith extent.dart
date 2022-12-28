import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridview_Extent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Extent"),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 100,
        children: List.generate(
          10,
          (index) {
            return const Card(
                child: Text(
              "Hello",
              style: TextStyle(fontSize: 10),
            ));
          },
        ),
      ),
    );
  }
}
