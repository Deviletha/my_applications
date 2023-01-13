import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_applications/Pass%20data%20btw%20Screen/dummy%20data.dart';

class Second extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    //fetch the id from the previous page
    final ProductId = ModalRoute.of(context)?.settings.arguments;
    
    final Product = dummyproducts.firstWhere((data) => data["ID"] == ProductId);
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Image.asset(Product["image"]),
          Text("${Product["ID"].toString()}"),
          Text("${Product["Name"]}"),
          Text("${Product["description"]}"),
        ],
      ),
      ),
    );
  }

}