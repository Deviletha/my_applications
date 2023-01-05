import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: List_with_Builder(),));
}

class List_with_Builder extends StatelessWidget{
  // var datas = ['Item 1','Item 2','Item 3','Item 4','Item 5','Item 6','Item 7'];
  var colors = [700,600,500,400,300,200,100];
  var name = ['Athira','Arathy','Ajay','Amith','Sanjeev','Sandeep','Aaira'];
  var phone = ['9447332390','9995681535','7025478565','7012142430','9656547088','9656576288','9995339900'];
  var images = ['https://images.unsplash.com/photo-1619067321513-bb55a012e9b2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1619067321513-bb55a012e9b2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1619067321513-bb55a012e9b2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1619067321513-bb55a012e9b2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1619067321513-bb55a012e9b2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1619067321513-bb55a012e9b2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1619067321513-bb55a012e9b2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("LIST WITH BUILDER"),),
      body: ListView.builder(
          itemBuilder: (BuildContext context,int index){
            return Card(
              color: Colors.teal[colors[index]],
                child: ListTile(
                title: Text(name[index]),
            subtitle: Text(phone[index]),
            leading: Image(
            image: NetworkImage(images[index]),
            ),
            ),
            );
          }
      ),
    );
  }
}