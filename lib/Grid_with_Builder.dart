import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grid_with_builder extends StatelessWidget{
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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List with Builder"),),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3),
        itemBuilder: (context,index){
        return Card(
          child: Image.asset(images[index]),
        );
        },
        itemCount: images.length,
      ),
    );
  }

}