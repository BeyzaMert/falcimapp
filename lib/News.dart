import 'package:flutter/material.dart';
import 'package:falcimapp/services/api_services.dart';
import 'package:falcimapp/model/article_model.dart';
import 'package:falcimapp/model/customTile.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    ApiService client = ApiService();
    return Scaffold(
      appBar: AppBar(
        title: Text("Horoscope News", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) =>
                  customListTile(articles[index], context),

            );

          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );

  }
}
