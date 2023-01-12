import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main() {
  runApp(MaterialApp(
    home: Lottie_animation(),
    debugShowCheckedModeBanner: false,
  ));
}
class Lottie_animation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [Lottie.network("https://assets9.lottiefiles.com/private_files/lf30_ux98admv.json"),
        Center(child: Text("Kurunari Moshtikkaruth")),
        Lottie.network("https://assets9.lottiefiles.com/private_files/lf30_02dt26eh.json"),
        Center(child: Text("Dancing Bird")),
        Lottie.network("https://assets9.lottiefiles.com/packages/lf20_5JFpAw.json"),
        Center(child: Text("Lets Go for a Walk")),

    ],
      ),
    );
  }

}