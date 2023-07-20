import 'package:firebase_practice/utils/firebase_auth_helper.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuthHelper.firebaseAuthHelper.sigOut();
            },
            icon: Icon(Icons.offline_bolt_rounded),
          ),
        ],
      ),
    );
  }
}
