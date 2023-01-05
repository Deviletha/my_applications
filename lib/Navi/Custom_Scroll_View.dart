import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: customscrollview(),
    debugShowCheckedModeBanner: false,
  ));
}

final List rooms = [
  { "image": "https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWwlMjByb29tc3xlbnwwfHwwfHw%3D&w=1000&q=80",
    "title": "Awesome room near Calicut"},
  { "image": "https://images.unsplash.com/photo-1631049552057-403cdb8f0658?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGhvdGVsJTIwcm9vbXxlbnwwfHwwfHw%3D&w=1000&q=80",
    "title": "Peaceful Room"},
  { "image": "https://plus.unsplash.com/premium_photo-1661926818635-3d413932f2a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzd8fGhvdGVsJTIwcm9vbXxlbnwwfHwwfHw%3D&w=1000&q=80",
    "title": "Beautiful Room"},
  { "image": "https://media.istockphoto.com/id/1334117334/photo/digital-render-of-large-hotel-suite-bedroom.jpg?b=1&s=170667a&w=0&k=20&c=J7QHUWAC5QZOMfvRW_eYJlNeHQA1VOgb9LNtU_ysRLU=",
    "title": "Vintage room near Calicut"},
  { "image": "https://images.unsplash.com/photo-1594560913095-8cf34bab82ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWwlMjByb29tc3xlbnwwfHwwfHw%3D&w=1000&q=80",
    "title": "Awesome Room"},
  { "image": "https://media.istockphoto.com/id/1392171965/photo/portrait-of-an-asian-tourist-woman-standing-nearly-window-looking-to-beautiful-view-with-her.jpg?b=1&s=170667a&w=0&k=20&c=zH2mkkINVmpd_3uZWQ9-GZxILe0UvsaxrqYuJ1pmDXI=",
    "title": "Beautiful Room"},
  { "image": "https://images.unsplash.com/photo-1584132915807-fd1f5fbc078f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cm9vbSUyMGhvdGVsfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "title": "Peaceful Room"},
  { "image": "https://images.unsplash.com/photo-1598928636135-d146006ff4be?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fGhvdGVsJTIwcm9vbXxlbnwwfHwwfHw%3D&w=1000&q=80",
    "title": "Awesome Room"},
  { "image": "https://media.istockphoto.com/id/1358237379/photo/young-businesswoman-working-from-hotel-room-on-business-trip-woman-sitting-on-bed-and-using.jpg?b=1&s=170667a&w=0&k=20&c=mgBg1LuGPH24FFcxRLcrHsdOQnNyaYphLRousO0Qkig=",
    "title": "Awesome room near Calicut"},
  { "image": "https://media.istockphoto.com/id/1419929906/photo/side-view-of-luxurious-bedroom-at-night-with-bed-armchair-potted-plant-and-walk-in-closet.jpg?b=1&s=170667a&w=0&k=20&c=whHa61HYpiYjJY5QmmGTy9xZD0YS0I7JAyhdrXXSApI=",
    "title": "Vintage room near Calicut"}
];

class customscrollview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 180.0,
            backgroundColor: Colors.lightGreen[300],
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
            floating: true,
            flexibleSpace: ListView(
              children: <Widget>[
                SizedBox(
                  height: 70,
                ),
                Text("Type your Location",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Puthiyangadi, Calicut",
                      border: InputBorder.none,
                      icon: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.search)),
                    ),
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: _buildCategories(),
          ),
          SliverList(
            delegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
              return _buildRooms(context, index);
            }, childCount: 15),
          )
        ],
      ),
    );
  }

  Widget _buildRooms(BuildContext context, int index) {
    var room = rooms[index % rooms.length];
    return Container(
      margin: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.network(room['image']),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Icon(
                      Icons.star,
                      color: Colors.grey.shade800,
                      size: 20.0,
                    ),
                  ),
                  const Positioned(
                    right: 8,
                    top: 8,
                    child: Icon(
                      Icons.star_border,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                  Positioned(
                    bottom: 20.0,
                    right: 10.0,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.white,
                      child: const Text("\$40"),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      room['title'],
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text("Puthiyangadi, Calicut"),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          //color: Colors.green,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "(220 reviews)",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategories() {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          SizedBox(
            width: 15,
          ),
          Category(
            icon: Icons.hotel,
            title: "Hotel",
            backgroundColor: Colors.pinkAccent,
          ),
          SizedBox(
            width: 15.0,
          ),
          Category(
            backgroundColor: Colors.blueAccent,
            title: "Restaurant",
            icon: Icons.restaurant,
          ),
          SizedBox(
            width: 15.0,
          ),
          Category(
            icon: Icons.local_cafe,
            backgroundColor: Colors.orangeAccent,
            title: "Cafe",
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget{
  final IconData icon;
  final String title;
  final Color? backgroundColor;

  const Category({Key? key, required this.icon, required this.title, this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child:  Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.all(10.0),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(title, style: const TextStyle(color: Colors.white))
          ],
        ),
      ),
    );
  }
}

