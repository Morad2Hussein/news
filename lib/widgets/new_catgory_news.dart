import 'package:flutter/material.dart';
import 'package:news_app_two/models/article_model.dart';
import 'package:news_app_two/widgets/newa_catgory.dart';



class NewCatgoryNews extends StatelessWidget{
   final List<ArticleModel> articles;

  const NewCatgoryNews({super.key, required this.articles});


  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          childCount: articles.length,
              (context, index) {
        return NewaCatgory(
          articleModel: articles[index],
        );
      }),
    );
  }
}
