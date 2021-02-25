import 'dart:convert';

import 'index.dart';

class JikanAnimeReviews {
  JikanAnimeReviews({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.reviews,
  });

  final String requestHash;
  final bool requestCached;
  final int requestCacheExpiry;
  final List<AnimeReview> reviews;

  JikanAnimeReviews copyWith({
    String requestHash,
    bool requestCached,
    int requestCacheExpiry,
    List<AnimeReview> reviews,
  }) =>
      JikanAnimeReviews(
        requestHash: requestHash ?? this.requestHash,
        requestCached: requestCached ?? this.requestCached,
        requestCacheExpiry: requestCacheExpiry ?? this.requestCacheExpiry,
        reviews: reviews ?? this.reviews,
      );

  static JikanAnimeReviews fromRawJson(String str) => JikanAnimeReviews.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory JikanAnimeReviews.fromJson(Map<String, dynamic> json) => JikanAnimeReviews(
        requestHash: json["request_hash"] == null ? null : json["request_hash"],
        requestCached: json["request_cached"] == null ? null : json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"] == null ? null : json["request_cache_expiry"],
        reviews: json["reviews"] == null ? null : List<AnimeReview>.from(json["reviews"].map((x) => AnimeReview.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry": requestCacheExpiry == null ? null : requestCacheExpiry,
        "reviews": reviews == null ? null : List<dynamic>.from(reviews.map((x) => x.toJson())),
      };
}

class AnimeReview {
  AnimeReview({
    this.malId,
    this.url,
    this.type,
    this.helpfulCount,
    this.date,
    this.reviewer,
    this.content,
  });

  final int malId;
  final String url;
  final dynamic type;
  final int helpfulCount;
  final DateTime date;
  final AnimeReviewer reviewer;
  final String content;

  AnimeReview copyWith({
    int malId,
    String url,
    dynamic type,
    int helpfulCount,
    DateTime date,
    AnimeReviewer reviewer,
    String content,
  }) =>
      AnimeReview(
        malId: malId ?? this.malId,
        url: url ?? this.url,
        type: type ?? this.type,
        helpfulCount: helpfulCount ?? this.helpfulCount,
        date: date ?? this.date,
        reviewer: reviewer ?? this.reviewer,
        content: content ?? this.content,
      );

  factory AnimeReview.fromRawJson(String str) => AnimeReview.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AnimeReview.fromJson(Map<String, dynamic> json) => AnimeReview(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        url: json["url"] == null ? null : json["url"],
        type: json["type"],
        helpfulCount: json["helpful_count"] == null ? null : json["helpful_count"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        reviewer: json["reviewer"] == null ? null : AnimeReviewer.fromJson(json["reviewer"]),
        content: json["content"] == null ? null : json["content"],
      );

  Map<String, dynamic> toJson() => {
        "mal_id": malId == null ? null : malId,
        "url": url == null ? null : url,
        "type": type,
        "helpful_count": helpfulCount == null ? null : helpfulCount,
        "date": date == null ? null : date.toIso8601String(),
        "reviewer": reviewer == null ? null : reviewer.toJson(),
        "content": content == null ? null : content,
      };
}
