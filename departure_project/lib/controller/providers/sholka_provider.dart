import 'dart:convert';
import 'package:departure/models/sholka_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class JsonProvider extends ChangeNotifier{
  List<dynamic> chepters = [];

  Future<void> FormJson() async {
    String data = await rootBundle.loadString("assets/json/sanatansanskrit.json");

    var decodeList = jsonDecode(data);

    chepters = decodeList.map((e) => Chapters.frommap(data1: e)).toList();
    notifyListeners();
  }
}