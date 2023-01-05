import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: MyBottomBar(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyBottomBar extends StatefulWidget{
  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  List screen = const [
    Text("Home"),
    Text("Favorite"),
    Text("Account"),
    Text("Search"),
  ];
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Bar"),),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_sharp),label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.search_sharp),label: "Search"),
        ],
      ),
      body: Center(
        child: screen[index],
      ),
    );
  }
}