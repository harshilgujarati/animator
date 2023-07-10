import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sky_scrappers/views/screens/spalsh_screen.dart';

void main() {
  runApp(
      MultiProvider(providers: [], builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.system,
          routes: {
            "/": (context) => SplashScreen(),
          },
        );
      },)
  );
}