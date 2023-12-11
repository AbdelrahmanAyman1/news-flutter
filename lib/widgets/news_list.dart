
import 'package:flutter/material.dart';
import 'package:news/model/articles_model.dart';

import 'package:news/widgets/news_item.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.articale
  });
  final List<ArticlesModel> articale ;

  @override
  Widget build(BuildContext context) {
    return  SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articale.length,
                (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: NewsItem(articlesModel: articale[index]),
            );
          }));
  }
}
