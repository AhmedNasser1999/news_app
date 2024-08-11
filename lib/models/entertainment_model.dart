class EntertainmentModel {
  List<Articles>? articles;

  EntertainmentModel({this.articles});

  factory EntertainmentModel.fromJson(Map<String, dynamic> json) {
    return EntertainmentModel(
      articles: json['articles'] != null
          ? List<Articles>.from(
              json['articles'].map(
                (article) => Articles.fromJson(article),
              ),
            )
          : null,
    );
  }
}

class Articles {
  String? author;
  String? title;
  String? url;
  String? urlToImage;
  String? publishedAt;

  Articles({
    this.author,
    this.title,
    this.url,
    this.urlToImage,
    this.publishedAt,
  });

  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
      author: json['author'],
      title: json['title'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
    );
  }
}
