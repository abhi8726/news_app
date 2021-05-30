import 'dart:convert';
import 'package:news_app/model/news_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=e5d4205a8f334b42aa69093677ec5737";

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
              title: element['title'],
              desc: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element["content"]);
          news.add(articleModel);
        }
      });
    }
  }
}
class CategoryNewsClass{
  List<ArticleModel> news = [];
  Future<void> getNews(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=e5d4205a8f334b42aa69093677ec5737";

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
              title: element['title'],
              desc: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element["content"]);
          news.add(articleModel);
        }
      });
    }
  }
}
