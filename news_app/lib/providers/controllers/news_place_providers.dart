import 'package:flutter/foundation.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/utils/helpers.dart';

class News_Place_Provider extends ChangeNotifier {
  late Future<NewsModel?> getWeather;

  getcountryName(val) {
    getWeather = APIHelper.apiHelper.fetchcountry(val);
    notifyListeners();
  }
}
