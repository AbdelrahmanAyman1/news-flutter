import 'package:flutter/material.dart';
import 'package:news/model/category_model.dart';
import 'package:news/screens/category_screen.dart';

class TabsWidget extends StatelessWidget {
  const TabsWidget({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return  CategoryListScreen(category: categoryModel.title,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage(categoryModel.image), fit: BoxFit.cover),
          ),
          child: Center(
              child: Text(
            categoryModel.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
