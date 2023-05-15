import 'package:connectivity_prectice/controllers/providers/connectivity_provider.dart';
import 'package:connectivity_prectice/screens/views/internet_cheaking_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ConnectivityProvider()),
    ],
    builder: (context, _) {
      return MaterialApp(
        routes: {
          '/': (context) => internet_cheaking_page(),
        },
      );
    },
  );
}
