import 'dart:convert';

import '../index.dart';

class JikanAnimeNews {
  JikanAnimeNews({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.articles,
  });

  final String? requestHash;
  final bool? requestCached;
  final int? requestCacheExpiry;
  final List<Article>? articles;

  JikanAnimeNews copyWith({
    String? requestHash,
    bool? requestCached,
    int? requestCacheExpiry,
    List<Article>? articles,
  }) =>
      JikanAnimeNews(
        requestHash: requestHash ?? this.requestHash,
        requestCached: requestCached ?? this.requestCached,
        requestCacheExpiry: requestCacheExpiry ?? this.requestCacheExpiry,
        articles: articles ?? this.articles,
      );

  static JikanAnimeNews fromRawJson(String str) => JikanAnimeNews.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory JikanAnimeNews.fromJson(Map<String, dynamic> json) => JikanAnimeNews(
        requestHash: json["request_hash"] == null ? null : json["request_hash"],
        requestCached: json["request_cached"] == null ? null : json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"] == null ? null : json["request_cache_expiry"],
        articles: json["articles"] == null ? null : List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry": requestCacheExpiry == null ? null : requestCacheExpiry,
        "articles": articles == null ? null : List<dynamic>.from(articles!.map((x) => x.toJson())),
      };
}
