import 'package:flutter/material.dart';
import 'package:news/model/articles_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.articlesModel});
  final ArticlesModel articlesModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: articlesModel.image == null
                ? const Icon(Icons.no_photography_rounded)
                : Image.network(
                    articlesModel.image!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )),
        const SizedBox(
          height: 12,
        ),
        Text(
          articlesModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articlesModel.description ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
