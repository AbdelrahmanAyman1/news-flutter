import 'package:flutter/material.dart';
import 'package:news/model/category_model.dart';
import 'package:news/widgets/tabs.dart';

class TabList extends StatelessWidget {
  const TabList({
    super.key
  });

  final List<CategoryModel> categories =const [
     CategoryModel(image: 'lib/assets/images/business.jpeg', title: 'Business'),

      CategoryModel(image: 'lib/assets/images/entertainment.png', title: 'Entertainment'),

       CategoryModel(image: 'lib/assets/images/general.jpeg', title: 'General'),

       CategoryModel(image: 'lib/assets/images/health.png', title: 'Health'),

       CategoryModel(image: 'lib/assets/images/science.jpeg', title: 'Science'), 

       CategoryModel(image: 'lib/assets/images/sports.jpg', title: 'Sports'),

       CategoryModel(image: 'lib/assets/images/technology.jpeg', title: 'Technology')

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return TabsWidget(categoryModel: categories[index],);
        },
      ),
    );
  }
}
