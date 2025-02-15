import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_two/models/article_model.dart';
import 'package:news_app_two/services/news_services.dart';
import 'package:news_app_two/widgets/new_catgory_news.dart';

class NewsBuilder extends StatefulWidget {
  const NewsBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsBuilder> createState() => _NewsBuilderState();
}

class _NewsBuilderState extends State<NewsBuilder> {
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServices(Dio()).getGeneralNews(
      category: widget.category
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewCatgoryNews(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: const Text(" That is error , try latter"),
              ),
            );
          } else {
            return SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }
        });
  }
}
