import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Expansion_tile(),
    debugShowCheckedModeBanner: false,
  ));
}

class Expansion_tile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("Expansion Tile"),),
      body: Column(
        children: [
          ExpansionTile(
            title: Text("Colors"),
            subtitle: Text("Expand this Tile"),
            children: [
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.cyanAccent,),
                title: Text("Cyan"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.green,),
                title: Text("Green"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.red,),
                title: Text("Red"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blue,),
                title: Text("Blue"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.purple,),
                title: Text("Purple"),
              )
            ],
          ),
          ExpansionTile(
            title: Text("Colors"),
            subtitle: Text("Expand this Tile"),
            children: [
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.cyanAccent,),
                title: Text("Cyan"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.green,),
                title: Text("Green"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.red,),
                title: Text("Red"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blue,),
                title: Text("Blue"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.purple,),
                title: Text("Purple"),
              )
            ],
          ),
          ExpansionTile(
            title: Text("Colors"),
            subtitle: Text("Expand this Tile"),
            children: [
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.cyanAccent,),
                title: Text("Cyan"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.green,),
                title: Text("Green"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.red,),
                title: Text("Red"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blue,),
                title: Text("Blue"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.purple,),
                title: Text("Purple"),
              )
            ],
          ),
          ExpansionTile(
            title: Text("Colors"),
            subtitle: Text("Expand this Tile"),
            children: [
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.cyanAccent,),
                title: Text("Cyan"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.green,),
                title: Text("Green"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.red,),
                title: Text("Red"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blue,),
                title: Text("Blue"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.purple,),
                title: Text("Purple"),
              )
            ],
          ),
        ],
      ),
    );
  }

}