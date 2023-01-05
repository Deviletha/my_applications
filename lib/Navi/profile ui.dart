import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile_UI(),
    debugShowCheckedModeBanner: false,
  ));
}

class Profile_UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        actions: [
          Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              heightFactor: 1.5,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/icons/601074e4-4a6e-4339-9f7e-3bb718dc1910.jpeg"),
                radius: 65,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 105,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/facebook.png"),
                  radius: 20,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/twitter.png"),
                  radius: 20,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/linkedin.png"),
                  radius: 20,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/github.png"),
                  radius: 20,
                  backgroundColor: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Deviletha Sai",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text("@developer",
                style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
            SizedBox(
              height: 10,
            ),
            Text("Junior Flutter Developer",
                style: TextStyle(fontSize: 25, color: Colors.black)),
            Container(

              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 6),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30)),
                        child: ListTile(
                          title: Text("Privacy"),
                          leading: Icon(Icons.privacy_tip_outlined),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 6, bottom: 6),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30)),
                        child: ListTile(
                          title: Text("Purchase History"),
                          leading: Icon(Icons.query_builder_outlined),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 6, bottom: 6),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30)),
                        child: ListTile(
                          title: Text("Help & Support"),
                          leading: Icon(Icons.error_outline),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 6, bottom: 6),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30)),
                        child: ListTile(
                          title: Text("Settings"),
                          leading: Icon(Icons.settings),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 6, bottom: 6),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30)),
                        child: ListTile(
                          title: Text("Invite a friend"),
                          leading: Icon(Icons.person_add_alt_1_outlined),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 6, bottom: 6),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30)),
                        child: ListTile(
                          title: Text("Log Out"),
                          leading: Icon(Icons.logout),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
