import 'package:flutter/material.dart';

class Page_1 extends StatefulWidget {
  const Page_1({Key? key}) : super(key: key);

  @override
  State<Page_1> createState() => _Page_1State();
}

class _Page_1State extends State<Page_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page 1",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Hero(
          tag: 'Page_2',
          placeholderBuilder: (BuildContext, _, __) {
            return CircularProgressIndicator();
          },
          flightShuttleBuilder: (BuildContext, _, direction, ___, ____){
            if(direction == HeroFlightDirection.push){
              return Icon(
                Icons.directions_boat,
                    size: 190,
              );
            }
            else{
              return Icon(
                Icons.airplanemode_on,
                size: 190,
              );
            }
        },
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("Page_2");
            },
            child: Icon(
              Icons.home,
              size: 80,
            ),
          ),
        ),
      ),
    );
  }
}
