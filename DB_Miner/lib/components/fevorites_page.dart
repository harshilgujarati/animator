import 'package:flutter/material.dart';

class fevorites_page extends StatefulWidget {
  const fevorites_page({super.key});

  @override
  State<fevorites_page> createState() => _fevorites_pageState();
}

class _fevorites_pageState extends State<fevorites_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "fevorites_page",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
