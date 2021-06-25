import 'dart:convert';
import 'package:falcimapp/model/article_model.dart';
import 'package:http/http.dart';



class ApiService {

  final endPointUrl =
      "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=982ef82399034db68448b834723488b1";


  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse((endPointUrl)));


    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
      body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}