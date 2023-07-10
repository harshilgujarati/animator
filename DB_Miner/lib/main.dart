import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:db_miner/views/screens/MainPage.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
      getPages: [
        GetPage(
          name: '/',
          page: () => Mainpage(),
        ),
      ],
    ),
  );
}
