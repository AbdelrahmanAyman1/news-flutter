import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/model/articles_model.dart';
import 'package:news/services/news_services.dart';
import 'package:news/widgets/news_list.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category,
  });
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(dio: Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articale: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
              child: Text('oops there is was an error please try agin later'),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );

    // return isLoading
    //     ? const SliverFillRemaining(
    //         child: Center(child: CircularProgressIndicator()))
    //     : articale.isEmpty
    //         ? const SliverFillRemaining(
    //             child: Center(
    //                 child: Text(
    //                     'oops there is was an error please try agin later')),
    //           )
    //         : NewsListView(articale: articale);
  }
}
