import 'package:flutter/material.dart';
import 'package:my_applications/Medical%20App/home%20page/textfield%20page.dart';
import 'bottomnavigation page.dart';
import 'carousal page.dart';

void main() => runApp(MaterialApp(
  home: Homepage(),
  debugShowCheckedModeBanner: false,
));

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Hey,Anand C B! "),
                Image.asset("assets/wave 1.png"),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/man-profile 1.png"),
                  // backgroundColor: Colors.grey,
                )
              ],
            ),
            SizedBox(
              height: 13,
            ),
            SearchBox(
              pIcon: Icon(Icons.search),
              pIconclr: Colors.red,
            ),
            SizedBox(
              height: 13,
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0313,
                width: MediaQuery.of(context).size.width * 112,
                child: Carousal(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Text("Specailty 😷 ")
                  ],
                ),
              ),
            ),
            Container(
              width:MediaQuery.of(context).size.width ,
              child: Specialty(),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("View More"),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,size: 18,))
              ],)
          ],
        ),
      ),
      bottomNavigationBar: Bottom_nav(),
    );
  }
}