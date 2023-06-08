import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../../models/planet_model.dart';

class planet_provider extends ChangeNotifier{
  List<planet_model> planet_details = [];

  Future<void> FromJson() async {
    String? data = await rootBundle.loadString("assets/json/planet_details.json");

    List decodeList = jsonDecode(data!);

    planet_details = decodeList.map((e) => planet_model.frommap(Data: e)).toList();
  }
}