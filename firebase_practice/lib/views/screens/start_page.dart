import 'package:flutter/material.dart';

class start_page extends StatefulWidget {
  const start_page({super.key});

  @override
  State<start_page> createState() => _start_pageState();
}

class _start_pageState extends State<start_page> {
  int initialindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: initialindex,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                initialindex = 0;
              });
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                initialindex = 1;
              });
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
