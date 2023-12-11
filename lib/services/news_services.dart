import 'package:dio/dio.dart';
import 'package:news/model/articles_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices({required this.dio});

  Future<List<ArticlesModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=6b69826cf6ac40af859d3c85db05ca02&category=$category');
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];
      List<ArticlesModel> articlesList = [];

      for (var artical in articles) {
        ArticlesModel articlesModel = ArticlesModel.fromJson(artical);
        articlesList.add(articlesModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
