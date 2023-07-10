import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import '../../utils/helpers.dart';

class NewsProvider extends ChangeNotifier {
  String country = "us";
  NewsModel? _newsModel;

  TextEditingController countrycontroller = TextEditingController();

  Future<NewsModel?> countrydata(String countryname) async {
    _newsModel = await APIHelper.apiHelper.fetchcountry(countryname);
    return _newsModel;
  }
}
