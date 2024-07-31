class CategoriesModel {
  final String author;
  final String title;
  final String url;
  final String urlToImage;
  final String publishedAt;

  CategoriesModel({
    required this.author,
    required this.title,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      author: json['author'],
      title: json['title'],
      url: json['url'],
      urlToImage: json['urlToImage'] ?? '',
      publishedAt: json['publishedAt'],
    );
  }
}
