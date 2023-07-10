class NewsModel {
  String author;
  String title;
  String description;
  String url;
  String source;
  String category;
  String language;
  String country;
  String published_at;

  NewsModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.source,
    required this.category,
    required this.language,
    required this.country,
    required this.published_at,
  });

  factory NewsModel.frommap({required Map data}) {
    return NewsModel(
      author: data["data"]["author"],
      title: data["data"]["title"],
      description: data["data"]["description"],
      url: data["data"]["url"],
      source: data["data"]["source"],
      category: data["data"]["category"],
      language: data["data"]["language"],
      country: data["data"]["country"],
      published_at: data["data"]["published_at"],
    );
  }
}
