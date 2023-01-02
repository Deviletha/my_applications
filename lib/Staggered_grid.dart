import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class Staggered_grid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Staggered Grid"),),
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        staggeredTiles: [
          StaggeredTile.count(2, 1),
          StaggeredTile.count(2, 3),
          StaggeredTile.count(2, 2),
          StaggeredTile.count(2, 3),
          StaggeredTile.count(2, 4),
          StaggeredTile.count(2, 4),
          StaggeredTile.count(2, 2),
          StaggeredTile.count(2, 6),
          StaggeredTile.count(2, 3),
        ],
        children: [
          Customchild(iconData: Icons.account_box,bgcolor: Colors.red,),
          Customchild(iconData: Icons.ac_unit,bgcolor: Colors.blue,),
          Customchild(iconData: Icons.account_box_sharp,bgcolor: Colors.green,),
          Customchild(iconData: Icons.ac_unit_sharp,bgcolor: Colors.teal,),
          Customchild(iconData: Icons.access_alarms_rounded,bgcolor: Colors.deepOrange,),
          Customchild(iconData: Icons.account_circle_rounded,bgcolor: Colors.pinkAccent,),
          Customchild(iconData: Icons.call,bgcolor: Colors.purple,),
          Customchild(iconData: Icons.dark_mode_sharp,bgcolor: Colors.yellow,),
          Customchild(iconData: Icons.dashboard,bgcolor: Colors.tealAccent,)
        ],
      ),
    );
  }
}
class Customchild extends StatelessWidget{
  final Color? bgcolor;
  final IconData iconData;
  Customchild({required this.iconData,this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Icon(iconData,color: Colors.white,),
    );
  }
}