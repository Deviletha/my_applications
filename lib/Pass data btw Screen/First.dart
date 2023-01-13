import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_applications/Pass%20data%20btw%20Screen/dummy%20data.dart';
import 'Second.dart';

void main() {
  runApp(MaterialApp(
    home: FirstScreen(),
    routes: {
      "Second": (context) => Second(),
    },
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Product List"),
        ),
        body: ListView(
          padding: EdgeInsets.all(15),
          children: dummyproducts.map((e) {
            return TextButton(
                onPressed: () => gonextpage(context, e["ID"]),
                child: Text("${e["Name"]}"));
          }).toList(),
        ));
  }

  void gonextpage(BuildContext context, product) {
    Navigator.of(context).pushNamed("Second", arguments: product);
  }
}
