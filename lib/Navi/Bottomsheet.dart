import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottmsheett extends StatelessWidget{

  void show(BuildContext context) {
    showModalBottomSheet(context: context, elevation: 3, builder: (context) => Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(leading: Icon(Icons.train), title: Text("Train"),),
          ListTile(leading: Icon(Icons.share), title: Text("Share"),),
          ListTile(leading: Icon(Icons.medical_information_outlined), title: Text("Information"),)
        ],
      ),
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Sheet"),),
      body: Center(
        child: GestureDetector(
            child: Text("BottomSheet"),
        onLongPress: () => show(context),),
      ),
    );
  }

}