import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/theme_model.dart';

class theme_provider extends ChangeNotifier{
  theme_model theme_Model;

  theme_provider({required this.theme_Model});

  chnageTheme()async{
    theme_Model.isDark = !theme_Model.isDark;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isdark', theme_Model.isDark);
    notifyListeners();
  }
}