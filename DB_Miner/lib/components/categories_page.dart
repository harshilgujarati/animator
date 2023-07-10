import 'package:flutter/material.dart';

class categories_page extends StatefulWidget {
  const categories_page({super.key});

  @override
  State<categories_page> createState() => _categories_pageState();
}

class _categories_pageState extends State<categories_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "categories_page",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
