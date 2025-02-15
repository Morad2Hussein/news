import 'package:dio/dio.dart';
import 'package:news_app_two/models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getGeneralNews({
    required String category
}) async {
    try{
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?apiKey=a677e78849df48598dc7bf3fa6d7972c&category=$category");
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            subTitle: article['description']);

        articlesList.add(articleModel);
      }
      return articlesList;
    }catch(e){
      return [];
    }
    }
}
