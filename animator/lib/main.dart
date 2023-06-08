import 'package:animator/controllers/providers/planet_provider.dart';
import 'package:animator/views/screens/Earth.dart';
import 'package:animator/views/screens/Home_page.dart';
import 'package:animator/views/screens/Jupiter.dart';
import 'package:animator/views/screens/Mars.dart';
import 'package:animator/views/screens/Mercury.dart';
import 'package:animator/views/screens/Neptune.dart';
import 'package:animator/views/screens/Saturn.dart';
import 'package:animator/views/screens/Uranus.dart';
import 'package:animator/views/screens/app_term_condition.dart';
import 'package:animator/views/screens/settings_page.dart';
import 'package:animator/views/screens/sun.dart';
import 'package:animator/views/screens/splash_screen.dart';
import 'package:animator/views/screens/venus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => planet_provider())
      ],
      builder: (context, _) {
        return MaterialApp(
          theme: ThemeData.light(useMaterial3: true),
          darkTheme: ThemeData.dark(useMaterial3: true),
          themeMode: ThemeMode.light,
          debugShowCheckedModeBanner: false,
          routes: {
            "/": (context) => splash_screen(),
            "app_term_condition": (context) => app_term_condition(),
            "Home_page": (context) => Home_Page(),
            "sun": (context) => sun(),
            "Earth": (context) => Earth(),
            "Jupiter": (context) => Jupiter(),
            "Mars": (context) => Mars(),
            "Mercury": (context) => Mercury(),
            "Neptune": (context) => Neptune(),
            "Saturn": (context) => Saturn(),
            "Uranus": (context) => Uranus(),
            "venus": (context) => venus(),
            "MyProfilePage": (context) => MyProfilePage(),
          },
        );
      },
    ),
  );
}
