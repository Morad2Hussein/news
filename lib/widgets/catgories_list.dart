import 'package:flutter/material.dart';
import 'package:news_app_two/models/catgory_model.dart';
import 'package:news_app_two/widgets/catgery.dart';

class CatgoriesList extends StatelessWidget {
  const CatgoriesList({
    super.key,
  });


  final List<CatgoryModel> topNews = const [
    CatgoryModel(text: "Business", image: "assets/business.jpg"),
    CatgoryModel(text: "entertainment", image: "assets/entertainer.jpg"),
    CatgoryModel(text: "general", image: "assets/general.jpg"),
    CatgoryModel(text: "health", image: "assets/health.jpg"),
    CatgoryModel(text: "science", image: "assets/science.jpg"),
    CatgoryModel(text: "sports", image: "assets/sport.jpg"),
    CatgoryModel(text: "technology", image: "assets/technology.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView.builder(
            itemCount: topNews.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 18.0),
                child: CatgoryCard(model: topNews[index]),
              );
            }));
  }
}
