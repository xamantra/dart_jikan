import 'dart:convert';

import 'index.dart';

class AnimeReviewer {
  AnimeReviewer({
    this.url,
    this.imageUrl,
    this.username,
    this.episodesSeen,
    this.scores,
  });

  final String url;
  final String imageUrl;
  final String username;
  final int episodesSeen;
  final AnimeReviewScore scores;

  AnimeReviewer copyWith({
    String url,
    String imageUrl,
    String username,
    int episodesSeen,
    AnimeReviewScore scores,
  }) =>
      AnimeReviewer(
        url: url ?? this.url,
        imageUrl: imageUrl ?? this.imageUrl,
        username: username ?? this.username,
        episodesSeen: episodesSeen ?? this.episodesSeen,
        scores: scores ?? this.scores,
      );

  factory AnimeReviewer.fromRawJson(String str) => AnimeReviewer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AnimeReviewer.fromJson(Map<String, dynamic> json) => AnimeReviewer(
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        username: json["username"] == null ? null : json["username"],
        episodesSeen: json["episodes_seen"] == null ? null : json["episodes_seen"],
        scores: json["scores"] == null ? null : AnimeReviewScore.fromJson(json["scores"]),
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
        "username": username == null ? null : username,
        "episodes_seen": episodesSeen == null ? null : episodesSeen,
        "scores": scores == null ? null : scores.toJson(),
      };
}
