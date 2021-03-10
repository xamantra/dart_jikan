import 'dart:convert';

import 'index.dart';

class JikanMangaReview {
  JikanMangaReview({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.reviews,
  });

  final String? requestHash;
  final bool? requestCached;
  final int? requestCacheExpiry;
  final List<MangaReview>? reviews;

  JikanMangaReview copyWith({
    String? requestHash,
    bool? requestCached,
    int? requestCacheExpiry,
    List<MangaReview>? reviews,
  }) =>
      JikanMangaReview(
        requestHash: requestHash ?? this.requestHash,
        requestCached: requestCached ?? this.requestCached,
        requestCacheExpiry: requestCacheExpiry ?? this.requestCacheExpiry,
        reviews: reviews ?? this.reviews,
      );

  factory JikanMangaReview.fromRawJson(String str) => JikanMangaReview.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory JikanMangaReview.fromJson(Map<String, dynamic> json) => JikanMangaReview(
        requestHash: json["request_hash"] == null ? null : json["request_hash"],
        requestCached: json["request_cached"] == null ? null : json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"] == null ? null : json["request_cache_expiry"],
        reviews: json["reviews"] == null ? null : List<MangaReview>.from(json["reviews"].map((x) => MangaReview.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry": requestCacheExpiry == null ? null : requestCacheExpiry,
        "reviews": reviews == null ? null : List<dynamic>.from(reviews!.map((x) => x.toJson())),
      };
}

class MangaReview {
  MangaReview({
    this.malId,
    this.url,
    this.type,
    this.helpfulCount,
    this.date,
    this.reviewer,
    this.content,
  });

  final int? malId;
  final String? url;
  final dynamic type;
  final int? helpfulCount;
  final DateTime? date;
  final MangaReviewer? reviewer;
  final String? content;

  MangaReview copyWith({
    int? malId,
    String? url,
    dynamic type,
    int? helpfulCount,
    DateTime? date,
    MangaReviewer? reviewer,
    String? content,
  }) =>
      MangaReview(
        malId: malId ?? this.malId,
        url: url ?? this.url,
        type: type ?? this.type,
        helpfulCount: helpfulCount ?? this.helpfulCount,
        date: date ?? this.date,
        reviewer: reviewer ?? this.reviewer,
        content: content ?? this.content,
      );

  factory MangaReview.fromRawJson(String str) => MangaReview.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory MangaReview.fromJson(Map<String, dynamic> json) => MangaReview(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        url: json["url"] == null ? null : json["url"],
        type: json["type"],
        helpfulCount: json["helpful_count"] == null ? null : json["helpful_count"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        reviewer: json["reviewer"] == null ? null : MangaReviewer.fromJson(json["reviewer"]),
        content: json["content"] == null ? null : json["content"],
      );

  Map<String, dynamic> toJson() => {
        "mal_id": malId == null ? null : malId,
        "url": url == null ? null : url,
        "type": type,
        "helpful_count": helpfulCount == null ? null : helpfulCount,
        "date": date == null ? null : date!.toIso8601String(),
        "reviewer": reviewer == null ? null : reviewer!.toJson(),
        "content": content == null ? null : content,
      };
}
