import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridview_Custom extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview Custom"),),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4),
          childrenDelegate: SliverChildBuilderDelegate((context,index) {
        return Container(
        child: ListView(
        children: [
          Center(child: Text("Hello")),
  SizedBox(height: 20,),
  Icon(Icons.ac_unit,
  color: Colors.green,)
  ],
        ),
        );
  },
            childCount: 20
  ),
      ),
    );
  }
}
