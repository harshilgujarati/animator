import 'package:flutter/material.dart';
import 'package:media_player/componets/first_page.dart';
import 'package:media_player/componets/second_page.dart';
import 'package:media_player/componets/third_page.dart';
import 'package:media_player/views/screens/home_page.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => home_page(),
        "first": (context) => first_page(),
        "second": (context) => second_page(),
        "third": (context) => third_page(),
      },
    )
  );
}