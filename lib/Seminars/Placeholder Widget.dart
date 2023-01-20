import 'package:circular_placeholder/circular_placeholder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: place_holder(),
    debugShowCheckedModeBanner: false,
  ));
}

class place_holder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
            width: 200,
            child: Placeholder(
              color: Colors.red,
               strokeWidth: 5,
              fallbackHeight: 100,
              fallbackWidth: 100,
            )),
        Expanded(
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 4,
                child: Placeholder(
                     strokeWidth: 15,
                    // color: Colors.blue,
                    ),
              ),
              Center(
                child: Container(
                  height: 120,
                  width: 220,
                  child: CircularPlaceholder(
                    color: Colors.green,
                    strokeWidth: 3,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
