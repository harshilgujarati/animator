import 'package:flutter/material.dart';
import '../../models/weather_model.dart';
import '../../utils/helpers.dart';

class WeatherProvider extends ChangeNotifier {
  String location = "Surat";
  WeatherModel? _weatherModel;

  TextEditingController citycontroller = TextEditingController();

  Future<WeatherModel?> Weatherdata(String locationame) async {
    _weatherModel = await APIHelper.apiHelper.fetchweather(locationame);
    return _weatherModel;
  }
}
