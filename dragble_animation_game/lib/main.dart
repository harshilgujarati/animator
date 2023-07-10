import 'package:dragble_animation_game/screens/views/Home_Page.dart';
import 'package:dragble_animation_game/screens/views/Page_1.dart';
import 'package:dragble_animation_game/screens/views/Page_2.dart';
import 'package:dragble_animation_game/screens/views/Page_3.dart';
import 'package:dragble_animation_game/screens/views/mateor_shower_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routes: {
        "Home_page": (context) => Home_Page(),
        "Page_1": (context) => Page_1(),
        "Page_2": (context) => Page_2(),
        "Page_3": (context) => Page_3(),
        "/": (context) => mateor_shower_animation(),
      },
    ),
  );
}
