class ArticlesModel {
  final String? image;
  final String title;
  final String? description;
  ArticlesModel(
      {required this.image, required this.title, required this.description});

  factory ArticlesModel.fromJson(json) {
   return ArticlesModel(
        image: json['urlToImage'],
        title: json['title'],
        description: json['description']);
  }
}
