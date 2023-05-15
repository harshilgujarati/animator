import 'package:flutter/material.dart';

class third_page extends StatefulWidget {
  const third_page({Key? key}) : super(key: key);

  @override
  State<third_page> createState() => _third_pageState();
}

class _third_pageState extends State<third_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("first"),),
    );
  }
}
