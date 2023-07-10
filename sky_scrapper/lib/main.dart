import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sky_scrapper/views/screens/Home_page.dart';

void main(){
  runApp(
    MultiProvider(
      providers: [

      ],
      builder: (context , _){
        return MaterialApp(
          theme: ThemeData.light(useMaterial3: true),
          darkTheme: ThemeData.dark(useMaterial3: true),
          debugShowCheckedModeBanner: false,
          initialRoute: "Home_page",
          routes: {
            "Home_page": (context) => Home_page(),
          },
        );
      },
    )
  );
}