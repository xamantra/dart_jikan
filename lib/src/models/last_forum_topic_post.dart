import 'dart:convert';

class ForumTopicLastPost {
  ForumTopicLastPost({
    this.url,
    this.authorName,
    this.authorUrl,
    this.datePosted,
  });

  final String url;
  final String authorName;
  final String authorUrl;
  final DateTime datePosted;

  ForumTopicLastPost copyWith({
    String url,
    String authorName,
    String authorUrl,
    DateTime datePosted,
  }) =>
      ForumTopicLastPost(
        url: url ?? this.url,
        authorName: authorName ?? this.authorName,
        authorUrl: authorUrl ?? this.authorUrl,
        datePosted: datePosted ?? this.datePosted,
      );

  factory ForumTopicLastPost.fromRawJson(String str) => ForumTopicLastPost.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ForumTopicLastPost.fromJson(Map<String, dynamic> json) => ForumTopicLastPost(
        url: json["url"] == null ? null : json["url"],
        authorName: json["author_name"] == null ? null : json["author_name"],
        authorUrl: json["author_url"] == null ? null : json["author_url"],
        datePosted: json["date_posted"] == null ? null : DateTime.parse(json["date_posted"]),
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "author_name": authorName == null ? null : authorName,
        "author_url": authorUrl == null ? null : authorUrl,
        "date_posted": datePosted == null ? null : datePosted.toIso8601String(),
      };
}
