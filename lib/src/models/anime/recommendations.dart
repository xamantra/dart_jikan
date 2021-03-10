import 'dart:convert';

import '../index.dart';

class JikanAnimeRecommendations {
  JikanAnimeRecommendations({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.recommendations,
  });

  final String? requestHash;
  final bool? requestCached;
  final int? requestCacheExpiry;
  final List<Recommendation>? recommendations;

  JikanAnimeRecommendations copyWith({
    String? requestHash,
    bool? requestCached,
    int? requestCacheExpiry,
    List<Recommendation>? recommendations,
  }) =>
      JikanAnimeRecommendations(
        requestHash: requestHash ?? this.requestHash,
        requestCached: requestCached ?? this.requestCached,
        requestCacheExpiry: requestCacheExpiry ?? this.requestCacheExpiry,
        recommendations: recommendations ?? this.recommendations,
      );

  static JikanAnimeRecommendations fromRawJson(String str) => JikanAnimeRecommendations.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory JikanAnimeRecommendations.fromJson(Map<String, dynamic> json) => JikanAnimeRecommendations(
        requestHash: json["request_hash"] == null ? null : json["request_hash"],
        requestCached: json["request_cached"] == null ? null : json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"] == null ? null : json["request_cache_expiry"],
        recommendations: json["recommendations"] == null ? null : List<Recommendation>.from(json["recommendations"].map((x) => Recommendation.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry": requestCacheExpiry == null ? null : requestCacheExpiry,
        "recommendations": recommendations == null ? null : List<dynamic>.from(recommendations!.map((x) => x.toJson())),
      };
}
