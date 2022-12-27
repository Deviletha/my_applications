import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list_with_custom extends StatelessWidget {
  //var name = ['Athi', 'Aju', 'Aaira', 'Ahaan', 'Ponnu', 'Sanju'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate([
            Card(
              color: Colors.green,
              child: ListTile(
                title: Text(" Instrument Store 1"),
                subtitle: Text("description"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1598653222000-6b7b7a552625?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                ),
                trailing: Wrap(
                  children: [
                    Icon(Icons.message),
                    SizedBox(width: 30),
                    Icon(Icons.phone),

                  ],
                ),
              ),
            ),
            Card(
              color: Colors.green,
              child: ListTile(
                title: Text(" Instrument Store 2"),
                subtitle: Text("description"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1477233534935-f5e6fe7c1159?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                ),
                trailing: Wrap(
                  children: [
                    Icon(Icons.message),
                    SizedBox(width: 30),
                    Icon(Icons.phone),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.green,
              child: ListTile(
                title: Text(" Instrument Store 3"),
                subtitle: Text("description"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1433622070098-754fdf81c929?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                ),
                trailing: Wrap(
                  children: [
                    Icon(Icons.message),
                    SizedBox(width: 30),
                    Icon(Icons.phone),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.green,
              child: ListTile(
                title: Text(" Instrument Store 4"),
                subtitle: const Text("description"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1495305379050-64540d6ee95d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MzV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                ),
                trailing: Wrap(
                  children: [
                    Icon(Icons.message),
                    SizedBox(width: 30),
                    Icon(Icons.phone),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.green,
              child: ListTile(
                title: Text(" Instrument Store 5"),
                subtitle: Text("description"),
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                ),
                trailing: Wrap(
                  children: [
                    Icon(Icons.message),
                    SizedBox(width: 30),
                    Icon(Icons.phone),
                  ],
                ),
              ),
            ),
          ]),
            //return Card(
           // child: Text(name[index]),
         //   );
   // childCount: name.length
      ),
    );
  }
}
