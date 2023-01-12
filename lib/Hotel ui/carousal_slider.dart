
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Sliderpagee(),
    debugShowCheckedModeBanner: false,
  ));
}

class Sliderpagee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("C Slider"),),
      body:   CarouselSlider(items: [Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image : NetworkImage("https://media.istockphoto.com/id/1206819070/photo/floral-background-vintage-flowers.jpg?b=1&s=170667a&w=0&k=20&c=0DZwGLmBWDcg3iJBcvWMUkQegvf0xTRaQyyv7VVBYzM="
            ),
          )
        ),
      ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image : NetworkImage("https://studybreaks.com/wp-content/uploads/2021/09/markus-winkler-1GgltJhOzus-unsplash-scaled.jpg?ezimgfmt=rs:0x0/rscb6/ngcb6/notWebP"
                ),
              )
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image : NetworkImage("https://media.istockphoto.com/id/1372090183/photo/pink-rose.jpg?b=1&s=170667a&w=0&k=20&c=TF4JwbfJqfaRaiySrmFqmaqsBu_6qITFs25pD1poZKA="
                ),
              )
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image : NetworkImage("https://images.unsplash.com/photo-1621789098261-433128ee8d1e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YmVhdXRpZnVsJTIwZmxvd2Vyc3xlbnwwfHwwfHw%3D&w=1000&q=80"
                ),
              )
          ),
        )
      ], options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 4,
        height: 200,enlargeCenterPage: true,
        aspectRatio: 16/9,
        autoPlayCurve: Curves.bounceOut,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        enableInfiniteScroll: true
      ),
      ),
    );
  }
}