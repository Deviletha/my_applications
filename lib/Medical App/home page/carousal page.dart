import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carousal extends StatelessWidget {
  List adv = [
    'assets/banner 1 1 2.png',
    'assets/banner 1 1 2.png',
    'assets/banner 1 1 2.png',
    'assets/banner 1 1 2.png',
    // 'https://thumbs.dreamstime.com/b/book-your-medical-appointment-online-190595834.jpg',
    // 'https://cdn1.rainbowhospitals.in/assets/images/book-an-appointment/book-an-appointment-form/3884687.jpg',
    // 'https://sc04.alicdn.com/kf/U3db117176e5048109d53049785397510I.png',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: adv.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            // ),
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Image.asset(adv[index],fit: BoxFit.fill,),
            ),
          );
        },
        options: CarouselOptions(
            viewportFraction: .8,
            enableInfiniteScroll: false,
            reverse: false,
            autoPlay: false,
            scrollDirection: Axis.horizontal));
  }
}

class Specialty extends StatelessWidget {
  List carousal_ast = [
    'assets/img_neurology_icon.png',
    'assets/img_genetics_icon.png',
    'assets/img_dentistry_icon.png',
    'assets/img_surgery_icon.png',
    'assets/img_oncology_icon.png'
  ];
  List title = [
    'Neurology',
    'Genetics',
    'Dentist',
    'Surgery',
    'Oncology'
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: CarouselSlider.builder(
          itemCount: carousal_ast.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Container(
              width: MediaQuery.of(context).size.width * 65,
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(10)),
                  // color: Colors.grey[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage(carousal_ast[index])),
                      Text(title[index])
                    ],
                  ),
                ),
              ),
            );
          },
          options: CarouselOptions(
              viewportFraction: .5,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,
              scrollDirection: Axis.horizontal)),
    );
  }
}