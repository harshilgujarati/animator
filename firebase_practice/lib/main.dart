import 'package:firebase_practice/views/screens/start_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      getPages: [
        GetPage(
          name: "/",
          page: () => start_page(),
        ),
        GetPage(
          name: "/homepage",
          page: () => start_page(),
        ),
      ],
    ),
  );
}
