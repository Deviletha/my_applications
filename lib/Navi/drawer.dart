import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.lightGreen[100]),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Deviletha Sai"),
                accountEmail: Text("devisai91@gmail.com"),
                currentAccountPicture: GestureDetector(
                  onTap: ( ) {
                    print("Current Profile");
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://media.istockphoto.com/id/1163310264/photo/confident-businesswoman-with-hands-in-pockets-looking-up.jpg?b=1&s=170667a&w=0&k=20&c=ThKqvo-yL7OPmtGOEBfuM1oOmonFOfoKmlN9Rsi-_o4="),),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1616769364512-1e50e8266907?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHw%3D&w=1000&q=80"),),
                ],
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1223738331/photo/panoramic-59-mpix-xxxxl-size-view-of-mount-ama-dablam-in-himalayas-nepal.jpg?b=1&s=170667a&w=0&k=20&c=cGqrdcvB6qqL8B2KPySr8yGE7Uh_sBSNpx3xJR-iYe0="),
                    fit: BoxFit.cover)),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.inbox),
                title: Text("Inbox"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text("Add Post"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.notifications_active_rounded),
                title: Text("Notification"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.local_activity_rounded),
                title: Text("Local Activity"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log Out"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
