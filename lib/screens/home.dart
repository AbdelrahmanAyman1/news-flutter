import 'package:flutter/material.dart';
import 'package:news/widgets/news_list_view_builder.dart';
import 'package:news/widgets/tabs_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 30,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              )
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(14.0),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 14)),
              SliverToBoxAdapter(child: TabList()),
              SliverToBoxAdapter(child: SizedBox(height: 24)),
              NewsListViewBuilder(category:'general')
              
            ],
          ),
        ),
      ),
    );
  }
}

