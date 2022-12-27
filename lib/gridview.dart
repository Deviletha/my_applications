import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewww extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View"),),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
        children: [
          Image(image: AssetImage("assets/icons/bmw-mini-icon.png")),
          Image(image: AssetImage("assets/icons/vw-beetle-icon.png")),
          Image(image: AssetImage("assets/icons/Tiger.png")),
          Image(image: AssetImage("assets/icons/Letter-A-icon.png")),
          Image(image: AssetImage("assets/icons/Plastic-Dog-Toy-icon.png")),
          Image(image: AssetImage("assets/icons/hd-280-icon.png")),
          Image(image: AssetImage("assets/icons/bmw-mini-icon.png")),
          Image(image: AssetImage("assets/icons/vw-beetle-icon.png")),
          Image(image: AssetImage("assets/icons/Tiger.png")),
          Image(image: AssetImage("assets/icons/Letter-A-icon.png")),
          Image(image: AssetImage("assets/icons/Plastic-Dog-Toy-icon.png")),
          Image(image: AssetImage("assets/icons/hd-280-icon.png")),
          Image(image: AssetImage("assets/icons/bmw-mini-icon.png")),
          Image(image: AssetImage("assets/icons/vw-beetle-icon.png")),
          Image(image: AssetImage("assets/icons/Tiger.png")),
          Image(image: AssetImage("assets/icons/Letter-A-icon.png")),
          Image(image: AssetImage("assets/icons/Plastic-Dog-Toy-icon.png")),
          Image(image: AssetImage("assets/icons/hd-280-icon.png")),
          Image(image: AssetImage("assets/icons/bmw-mini-icon.png")),
          Image(image: AssetImage("assets/icons/vw-beetle-icon.png")),
        ],
    ),
    );
  }
}
