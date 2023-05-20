import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {

  final Icon pIcon;
  final Color pIconclr;
  SearchBox({ required this.pIcon, required this.pIconclr});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300]),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search"Department"',
            prefixIcon: pIcon,
            prefixIconColor: pIconclr,
            border: InputBorder.none
        ),
      ),
    );
  }
}