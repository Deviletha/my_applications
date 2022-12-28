import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_applications/Grid_with_Builder.dart';
import 'package:my_applications/Gridview%20vith%20extent.dart';
import 'package:my_applications/Gridview_custom.dart';
import 'package:my_applications/StackDemo.dart';
import 'package:my_applications/gridview.dart';
import 'package:my_applications/gridview_with_count.dart';
import 'package:my_applications/homepage.dart';
import 'package:my_applications/listview_custom.dart';
import 'package:my_applications/login%20with%20validation.dart';

void main(){
  runApp(MaterialApp(
    home: SplashScreen(),
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
    
  }

class _SplashScreenState extends State {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Gridview_Extent()));
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/hd-280-icon.png"),
            Text("Music Instruments Store",style: TextStyle(fontSize: 30, color: Colors.brown),)
          ],
        ),
      ),
    );
  }
}
