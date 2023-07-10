import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange.shade300,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).pushNamed("Page_1");
              });
            },
            icon: Icon(
              Icons.home,
              size: 40,
            ),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Draggable(
                      childWhenDragging: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(30)),
                        height: 240,
                        width: 180,
                      ),
                      feedback: Text(
                        "🦁",
                        style: TextStyle(
                            fontSize: 140, decoration: TextDecoration.none),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "🦁",
                          style: TextStyle(
                              fontSize: 140, decoration: TextDecoration.none),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(30)),
                        height: 240,
                        width: 180,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Draggable(
                      childWhenDragging: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        height: 240,
                        width: 180,
                      ),
                      feedback: Text(
                        "🐘",
                        style: TextStyle(
                            fontSize: 140, decoration: TextDecoration.none),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "🐘",
                          style: TextStyle(
                              fontSize: 140, decoration: TextDecoration.none),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        height: 240,
                        width: 180,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Draggable(
                      childWhenDragging: Container(
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(30)),
                        height: 240,
                        width: 180,
                      ),
                      feedback: Text(
                        "🐯",
                        style: TextStyle(
                            fontSize: 140, decoration: TextDecoration.none),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "🐯",
                          style: TextStyle(
                              fontSize: 140, decoration: TextDecoration.none),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(30)),
                        height: 240,
                        width: 180,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Draggable(
                      childWhenDragging: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30)),
                        height: 240,
                        width: 180,
                      ),
                      feedback: Text(
                        "🐼",
                        style: TextStyle(
                            fontSize: 140, decoration: TextDecoration.none),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "🐼",
                          style: TextStyle(
                              fontSize: 140, decoration: TextDecoration.none),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30)),
                        height: 240,
                        width: 180,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Panda",
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30)),
                      height: 240,
                      width: 180,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Tiger",
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(30)),
                      height: 240,
                      width: 180,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Elephants",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                      height: 240,
                      width: 180,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Lion",
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      height: 240,
                      width: 180,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
