import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServises {
  final Dio dio;

  NewsServises({required this.dio});

  Future<List<ArticleModel>> getnews() async {
    Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=0d71822ad08c476bb81a27c09e2da85f",
    );

    Map<String, dynamic> jsondata = response.data;
    List<dynamic> articles = jsondata["articles"];
    List<ArticleModel> articlelist = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article["urlToImage"],
        title: article["title"],
        subtitle: article["description"],
      );
      articlelist.add(articleModel);
    }
    return articlelist;
  }
}
