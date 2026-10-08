import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/servises/news_servises.dart';
import 'package:news_app/widgets/news_tile.dart';

class newlistview extends StatefulWidget {
  const newlistview({super.key});

  @override
  State<newlistview> createState() => _newlistviewState();
}

class _newlistviewState extends State<newlistview> {
  List<ArticleModel> articles = [];
  @override
  void initState() {
    super.initState();
    getgeneralnews();
  }

  Future<void> getgeneralnews() async {
    articles = await NewsServises(dio: Dio()).getnews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Newstile(articlemodel: articles[index]),
        );
      },
    );
  }
}
