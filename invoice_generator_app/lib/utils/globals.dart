import 'package:flutter/material.dart';

import '../models/modals.dart';

AppBar mainappbar = AppBar(
  title: Text(
    "Invoice Generator",
    style: appbarText,
  ),
  leading: Image(
    image: AssetImage('assets/images/invoice logo.png'),
  ),
  actions: [
    IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.sunny,
      ),
    )
  ],
  backgroundColor: Color.fromRGBO(25, 157, 117, 100),
);

TextStyle appbarText = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 30,
  color: Colors.black,
);

Image applogo = Image.asset('assets/images/invoice logo.png');

Padding normalpadding = Padding(padding: EdgeInsets.all(20));

bool isDarkMode = false;

class Globals {
  static List<Items> All_Items = [];
}

String? Name;
String? monumber;
String? pincode;
String? email;
String? city;
