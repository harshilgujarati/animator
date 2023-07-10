import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/models/news_model.dart';

class APIHelper {
  APIHelper._();
  static final APIHelper apiHelper = APIHelper._();

  Future<NewsModel?> fetchcountry(val) async {
    String baseurl = "http://api.mediastack.com/v1/news?access_key=94c5cf2364264dfb5cd87854273682a1&keywords=cricket&countries=us";
    http.Response res = await http.get(Uri.parse(baseurl));
    if (res.statusCode == 200) {
      String data = res.body;
      Map<String, dynamic> decoddata = jsonDecode(data);
      NewsModel Newsdata = NewsModel.frommap(data: decoddata);
      return Newsdata;
    }
  }
}
