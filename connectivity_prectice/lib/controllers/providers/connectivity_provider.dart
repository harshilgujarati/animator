import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:connectivity_prectice/models/connectivity_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConnectivityProvider extends ChangeNotifier {
  Connectivity conectivity = Connectivity();

  ConnectivityModel connectivityModel =
      ConnectivityModel(ConnectivityStatus: "Waiting");

  void cheakinternet() {
    conectivity.onConnectivityChanged
        .listen((ConnectivityResult connectivityResult) {
      switch (connectivityResult) {
        case ConnectivityResult.wifi:
          connectivityModel.ConnectivityStatus = "WIFI";
          notifyListeners();
          break;
        case ConnectivityResult.mobile:
          connectivityModel.ConnectivityStatus = "MOBILE";
          notifyListeners();
          break;
        case ConnectivityResult.bluetooth:
          connectivityModel.ConnectivityStatus = "BLUETOOTH";
          notifyListeners();
          break;
        default:
          connectivityModel.ConnectivityStatus = "WAITING";
          notifyListeners();
          break;
      }
    });
  }
}
