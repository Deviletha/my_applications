import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grid_count extends StatelessWidget {
  var images = [
    "assets/icons/bmw-mini-icon.png",
    "assets/icons/hd-280-icon.png",
    "assets/icons/Letter-A-icon.png",
    "assets/icons/Plastic-Dog-Toy-icon.png",
    "assets/icons/Tiger.png",
    "assets/icons/Violin-icon.png",
    "assets/icons/vw-beetle-icon.png",
    "assets/icons/bmw-mini-icon.png",
    "assets/icons/hd-280-icon.png",
    "assets/icons/Letter-A-icon.png",
    "assets/icons/Plastic-Dog-Toy-icon.png",
    "assets/icons/Tiger.png",
    "assets/icons/Tiger.png",
    "assets/icons/Violin-icon.png",
    "assets/icons/vw-beetle-icon.png",
    "assets/icons/bmw-mini-icon.png",
    "assets/icons/hd-280-icon.png",
    "assets/icons/Letter-A-icon.png",
    "assets/icons/Plastic-Dog-Toy-icon.png",
    "assets/icons/Tiger.png"
  ];
  var colors = [Colors.blue,Colors.green,Colors.orange,Colors.red,Colors.deepPurple,Colors.yellow,Colors.pink,Colors.grey,Colors.blueAccent,Colors.lightGreen,
    Colors.blue,Colors.green,Colors.orange,Colors.red,Colors.deepPurple,Colors.yellow,Colors.pink,Colors.grey,Colors.blueAccent,Colors.lightGreen];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid Count"),),
      body: GridView.count(crossAxisCount: 2,
      mainAxisSpacing: 20,
      crossAxisSpacing: 5,
      children: List.generate(20, (index) {
        return Container(
          color: colors[index],
          child: Image(image: AssetImage(images[index])),
        );
      }),
      ),
    );
  }
}
