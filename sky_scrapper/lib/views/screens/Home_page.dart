import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          SizedBox(
            width: 28,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/wll.jpeg"))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white60,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
