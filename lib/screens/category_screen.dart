import 'package:flutter/material.dart';
import 'package:news/widgets/news_list_view_builder.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(slivers: [
          NewsListViewBuilder(
            category: category,
          )
        ]),
      ),
    );
  }
}
