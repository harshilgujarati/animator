import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_practice/views/screens/home_page.dart';
import 'package:firebase_practice/views/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => login_page(),
        ),
        GetPage(
          name: '/home_page',
          page: () => home_page(),
        ),
      ],
    ),
  );
}
