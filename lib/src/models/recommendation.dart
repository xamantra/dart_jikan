import 'dart:convert';

class Recommendation {
  Recommendation({
    this.malId,
    this.url,
    this.imageUrl,
    this.recommendationUrl,
    this.title,
    this.recommendationCount,
  });

  final int? malId;
  final String? url;
  final String? imageUrl;
  final String? recommendationUrl;
  final String? title;
  final int? recommendationCount;

  Recommendation copyWith({
    int? malId,
    String? url,
    String? imageUrl,
    String? recommendationUrl,
    String? title,
    int? recommendationCount,
  }) =>
      Recommendation(
        malId: malId ?? this.malId,
        url: url ?? this.url,
        imageUrl: imageUrl ?? this.imageUrl,
        recommendationUrl: recommendationUrl ?? this.recommendationUrl,
        title: title ?? this.title,
        recommendationCount: recommendationCount ?? this.recommendationCount,
      );

  factory Recommendation.fromRawJson(String str) => Recommendation.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory Recommendation.fromJson(Map<String, dynamic> json) => Recommendation(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        recommendationUrl: json["recommendation_url"] == null ? null : json["recommendation_url"],
        title: json["title"] == null ? null : json["title"],
        recommendationCount: json["recommendation_count"] == null ? null : json["recommendation_count"],
      );

  Map<String, dynamic> toJson() => {
        "mal_id": malId == null ? null : malId,
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
        "recommendation_url": recommendationUrl == null ? null : recommendationUrl,
        "title": title == null ? null : title,
        "recommendation_count": recommendationCount == null ? null : recommendationCount,
      };
}
