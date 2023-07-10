import 'package:flutter/material.dart';

class autors_page extends StatefulWidget {
  const autors_page({super.key});

  @override
  State<autors_page> createState() => _autors_pageState();
}

class _autors_pageState extends State<autors_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "autors_page",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
